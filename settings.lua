-- mod-name: QualityAdjuster
-- settings.lua
-- Allows users to modify the quality levels via mod settings
data:extend({{
	type = "int-setting",
	name = "uncommon_level",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 1,
	maximum_value = 20,
	order = "a1"
}, {
	type = "int-setting",
	name = "rare_level",
	setting_type = "startup",
	default_value = 2,
	minimum_value = 1,
	maximum_value = 20,
	order = "b1"
}, {
	type = "int-setting",
	name = "epic_level",
	setting_type = "startup",
	default_value = 3,
	minimum_value = 1,
	maximum_value = 20,
	order = "c1"
}, {
	type = "int-setting",
	name = "legendary_level",
	setting_type = "startup",
	default_value = 5,
	minimum_value = 1,
	maximum_value = 20,
	order = "d1"
}, {
	type = "int-setting",
	name = "beacon_power_usage_divisor",
	setting_type = "startup",
	default_value = 6,
	minimum_value = 1,
	maximum_value = 12,
	order = "e1"
}, {
	type = "int-setting",
	name = "mining_drill_resource_drain_divisor",
	setting_type = "startup",
	default_value = 6,
	minimum_value = 1,
	maximum_value = 12,
	order = "e2"
}, {
	type = "int-setting",
	name = "uncommon_science_pack_drain",
	setting_type = "startup",
	default_value = 99,
	minimum_value = 1,
	maximum_value = 100,
	order = "a4"
}, {
	type = "int-setting",
	name = "rare_science_pack_drain",
	setting_type = "startup",
	default_value = 98,
	minimum_value = 1,
	maximum_value = 100,
	order = "b4"
}, {
	type = "int-setting",
	name = "epic_science_pack_drain",
	setting_type = "startup",
	default_value = 97,
	minimum_value = 1,
	maximum_value = 100,
	order = "c4"
}, {
	type = "int-setting",
	name = "legendary_science_pack_drain",
	setting_type = "startup",
	default_value = 95,
	minimum_value = 1,
	maximum_value = 100,
	order = "d4"
}, {
	type = "double-setting",
	name = "uncommon_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "a5"
}, {
	type = "double-setting",
	name = "rare_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "b5"
}, {
	type = "double-setting",
	name = "epic_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "c5"
}, {
	type = "double-setting",
	name = "quality_module_1",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "f1"
}, {
	type = "double-setting",
	name = "quality_module_2",
	setting_type = "startup",
	default_value = 0.2,
	minimum_value = 0,
	maximum_value = 1,
	order = "f2"
}, {
	type = "double-setting",
	name = "quality_module_3",
	setting_type = "startup",
	default_value = 0.25,
	minimum_value = 0,
	maximum_value = 1,
	order = "f3"
}, {
	type = "double-setting",
	name = "speed_module_1",
	setting_type = "startup",
	default_value = -0.1,
	minimum_value = -1,
	maximum_value = 0,
	order = "f4"
}, {
	type = "double-setting",
	name = "speed_module_2",
	setting_type = "startup",
	default_value = -0.15,
	minimum_value = -1,
	maximum_value = 0,
	order = "f5"
}, {
	type = "double-setting",
	name = "speed_module_3",
	setting_type = "startup",
	default_value = -0.25,
	minimum_value = -1,
	maximum_value = 0,
	order = "f6"
}, {
	type = "bool-setting",
	name = "unlink_quality_from_speed",
	setting_type = "startup",
	default_value = false,
	order = "g1"
}})
