#if defined(__KERNEL__) || defined(MODULE)
#include <linux/types.h>
#else
#include <stdint.h>
#include <stdbool.h>
#endif

#include "cmos_sensor_output_generator.h"
#include "cmos_sensor_output_generator_regs.h"

/*******************************************************************************
 *  Private API
 ******************************************************************************/

/*******************************************************************************
 *  Public API
 ******************************************************************************/
/*
 * cmos_sensor_output_generator_inst
 *
 * Constructs a device structure.
 */
cmos_sensor_output_generator_dev cmos_sensor_output_generator_inst(void *base, unsigned int pix_depth) {
    cmos_sensor_output_generator_dev dev;

    dev.base = base;
    dev.pix_depth = pix_depth;

    return dev;
}

/*
 * cmos_sensor_output_generator_init
 *
 * Initializes the CMOS Sensor Output Generator controller.
 *
 * This routine sets the controller to sequential mode and sets the values of
 * all registers to the minimums defined in cmos_sensor_output_generator_regs.h.
 */
void cmos_sensor_output_generator_init(cmos_sensor_output_generator_dev *dev) {
    cmos_sensor_output_generator_stop(dev);

    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_ROW_SIZE(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_MIN);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_COL_SIZE(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_MIN);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_FRAME_FRAME_BLANK_CYCLES(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_MIN);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_FRAME_LINE_BLANK_CYCLES(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_MIN);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_LINE_LINE_BLANK_CYCLES(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_MIN);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_LINE_FRAME_BLANK_CYCLES(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_MIN);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_RANDOM(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_SEQUENTIAL);
}

/*
 * cmos_sensor_output_generator_configure
 *
 * Configure the generator.
 *
 * Setting the random parameter to true enables random number generation mode,
 * and false sets it to sequential mode.
 */
void cmos_sensor_output_generator_configure(cmos_sensor_output_generator_dev *dev, uint32_t row_size, uint32_t col_size, uint32_t frame_frame_blank_cycles, uint32_t frame_line_blank_cycles, uint32_t line_line_blank_cycles, uint32_t line_frame_blank_cycles, bool random) {
    cmos_sensor_output_generator_stop(dev);

    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_ROW_SIZE(dev->base, row_size);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_COL_SIZE(dev->base, col_size);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_FRAME_FRAME_BLANK_CYCLES(dev->base, frame_frame_blank_cycles);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_FRAME_LINE_BLANK_CYCLES(dev->base, frame_line_blank_cycles);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_LINE_LINE_BLANK_CYCLES(dev->base, line_line_blank_cycles);
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_LINE_FRAME_BLANK_CYCLES(dev->base, line_frame_blank_cycles);

    if (random) {
        CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_RANDOM(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM);
    } else {
        CMOS_SENSOR_OUTPUT_GENERATOR_WR_CONFIG_RANDOM(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_SEQUENTIAL);
    }
}

/*
 * cmos_sensor_output_generator_start
 *
 * Starts the generator.
 *
 * You must previously configure the controller with cmos_sensor_output_generator_configure()
 * before calling this function.
 */
void cmos_sensor_output_generator_start(cmos_sensor_output_generator_dev *dev) {
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_COMMAND(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_START);
}

/*
 * cmos_sensor_output_generator_stop
 *
 * Stops the generator.
 */
void cmos_sensor_output_generator_stop(cmos_sensor_output_generator_dev *dev) {
    CMOS_SENSOR_OUTPUT_GENERATOR_WR_COMMAND(dev->base, CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_STOP);
}
