#ifndef __CMOS_SENSOR_OUTPUT_GENERATOR_H__
#define __CMOS_SENSOR_OUTPUT_GENERATOR_H__

/* cmos_sensor_output_generator device structure */
typedef struct cmos_sensor_output_generator_dev {
    void         *base;     /* Base address of component */
    unsigned int pix_depth; /* Depth of each pixel sample */
} cmos_sensor_output_generator_dev;

/*******************************************************************************
 *  Public API
 ******************************************************************************/
cmos_sensor_output_generator_dev cmos_sensor_output_generator_inst(void *base, unsigned int pix_depth);

void cmos_sensor_output_generator_init(cmos_sensor_output_generator_dev *dev);

void cmos_sensor_output_generator_configure(cmos_sensor_output_generator_dev *dev, uint32_t row_size, uint32_t col_size, uint32_t frame_frame_blank_cycles, uint32_t frame_line_blank_cycles, uint32_t line_line_blank_cycles, uint32_t line_frame_blank_cycles, bool random);
void cmos_sensor_output_generator_start(cmos_sensor_output_generator_dev *dev);
void cmos_sensor_output_generator_stop(cmos_sensor_output_generator_dev *dev);

#endif /* __CMOS_SENSOR_OUTPUT_GENERATOR_H__ */

