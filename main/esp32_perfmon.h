#ifndef ESP32_PERFMON_H
#define ESP32_PERFMON_H
#include "esp_err.h"
#include <stdint.h>

// Structure to hold performance counters
struct perfmon_counters_t {
    uint32_t cycles;
    uint32_t instructions;
};

// Add a new structure to hold comprehensive performance data
typedef struct {
    int cpu_usage;    // CPU usage percentage
    int mem_free;     // Free memory in bytes
} esp32_perfmon_data_t;

// Function prototypes
void perfmon_init();
void perfmon_reset();
void perfmon_read(struct perfmon_counters_t *counters);

// New function to get overall performance data
esp_err_t esp32_perfmon_get_data(esp32_perfmon_data_t *data);

#endif // ESP32_PERFMON_H
