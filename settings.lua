-- mod-name: QualityAdjuster
-- settings.lua
-- Allows users to modify the quality levels via mod settings
data:extend({{
	type = "int-setting",
	name = "normal_level",
	setting_type = "startup",
	default_value = 0,
	minimum_value = 0,
	maximum_value = 20,
	order = "a1"
}, {
	type = "int-setting",
	name = "uncommon_level",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 1,
	maximum_value = 20,
	order = "b1"
}, {
	type = "int-setting",
	name = "rare_level",
	setting_type = "startup",
	default_value = 2,
	minimum_value = 1,
	maximum_value = 20,
	order = "c1"
}, {
	type = "int-setting",
	name = "epic_level",
	setting_type = "startup",
	default_value = 3,
	minimum_value = 1,
	maximum_value = 20,
	order = "d1"
}, {
	type = "int-setting",
	name = "legendary_level",
	setting_type = "startup",
	default_value = 5,
	minimum_value = 1,
	maximum_value = 20,
	order = "e1"
}, {
	type = "int-setting",
	name = "beacon_power_usage_divisor",
	setting_type = "startup",
	default_value = 6,
	minimum_value = 1,
	maximum_value = 12,
	order = "f1"
}, {
	type = "double-setting",
	name = "distribution_effectivity_bonus_per_quality_level_beacon",
	setting_type = "startup",
	default_value = 0,
	minimum_value = 0,
	maximum_value = 1,
	order = "f1a"
}, {
	type = "int-setting",
	name = "mining_drill_resource_drain_divisor",
	setting_type = "startup",
	default_value = 6,
	minimum_value = 1,
	maximum_value = 12,
	order = "f2"
}, {
	type = "double-setting",
	name = "normal_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "a5"
}, {
	type = "double-setting",
	name = "uncommon_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "b5"
}, {
	type = "double-setting",
	name = "rare_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "c5"
}, {
	type = "double-setting",
	name = "epic_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "d5"
}, {
	type = "double-setting",
	name = "quality_module_1",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "g1"
}, {
	type = "double-setting",
	name = "quality_module_2",
	setting_type = "startup",
	default_value = 0.2,
	minimum_value = 0,
	maximum_value = 1,
	order = "g2"
}, {
	type = "double-setting",
	name = "quality_module_3",
	setting_type = "startup",
	default_value = 0.25,
	minimum_value = 0,
	maximum_value = 1,
	order = "g3"
}, {
	type = "double-setting",
	name = "speed_module_1",
	setting_type = "startup",
	default_value = -0.1,
	minimum_value = -1,
	maximum_value = 0,
	order = "g4"
}, {
	type = "double-setting",
	name = "speed_module_2",
	setting_type = "startup",
	default_value = -0.15,
	minimum_value = -1,
	maximum_value = 0,
	order = "g5"
}, {
	type = "double-setting",
	name = "speed_module_3",
	setting_type = "startup",
	default_value = -0.25,
	minimum_value = -1,
	maximum_value = 0,
	order = "g6"
}, {
	type = "bool-setting",
	name = "unlink_quality_from_speed",
	setting_type = "startup",
	default_value = false,
	order = "g7"
}, {
	type = "bool-setting",
	name = "lab_uses_quality_drain_modifier",
	setting_type = "startup",
	default_value = false,
	order = "h1"
}, {
	type = "int-setting",
	name = "uncommon_science_pack_drain",
	setting_type = "startup",
	default_value = 99,
	minimum_value = 1,
	maximum_value = 100,
	order = "h2"
}, {
	type = "int-setting",
	name = "rare_science_pack_drain",
	setting_type = "startup",
	default_value = 98,
	minimum_value = 1,
	maximum_value = 100,
	order = "h3"
}, {
	type = "int-setting",
	name = "epic_science_pack_drain",
	setting_type = "startup",
	default_value = 97,
	minimum_value = 1,
	maximum_value = 100,
	order = "h4"
}, {
	type = "int-setting",
	name = "legendary_science_pack_drain",
	setting_type = "startup",
	default_value = 95,
	minimum_value = 1,
	maximum_value = 100,
	order = "h5"
}, {
	type = "bool-setting",
	name = "quality_affects_inventory_size_cargo_wagon",
	setting_type = "startup",
	default_value = false,
	order = "i1"
}, {
	type = "bool-setting",
	name = "quality_affects_inventory_size_container",
	setting_type = "startup",
	default_value = true,
	order = "i2"
}, {
	type = "bool-setting",
	name = "quality_affects_capacity_fluid_wagon",
	setting_type = "startup",
	default_value = false,
	order = "i3"
}, {
	type = "bool-setting",
	name = "charging_station_count_affected_by_quality_roboport_equipment",
	setting_type = "startup",
	default_value = false,
	order = "i4"
}, {
	type = "bool-setting",
	name = "charging_station_count_affected_by_quality_roboport",
	setting_type = "startup",
	default_value = false,
	order = "i5"
}, {
	type = "double-setting",
	name = "fork_chance_increase_per_quality_level_chain_active_trigger",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "j1"
}, {
	type = "int-setting",
	name = "arm_inventory_size_quality_increase_asteroid_collector",
	setting_type = "startup",
	default_value = 0,
	minimum_value = 0,
	maximum_value = 10,
	order = "j3"
}, {
	type = "int-setting",
	name = "inventory_size_quality_increase_asteroid_collector",
	setting_type = "startup",
	default_value = 5,
	minimum_value = 0,
	maximum_value = 20,
	order = "j4"
}, {
	type = "double-setting",
	name = "energy_usage_quality_scaling_asteroid_collector",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "j5"
}, {
	type = "int-setting",
	name = "arm_count_quality_scaling_asteroid_collector",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0,
	maximum_value = 10,
	order = "j6"
}, {
	type = "double-setting",
	name = "arm_speed_quality_scaling_asteroid_collector",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "j7"
}, {
	type = "double-setting",
	name = "arm_angular_speed_cap_quality_scaling_asteroid_collector",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "j8"
}})
