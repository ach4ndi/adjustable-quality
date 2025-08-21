-- mod-name: QualityAdjuster
-- settings.lua
-- Allows users to modify the quality levels via mod settings
data:extend({{
	type = "double-setting",
	name = "default_multiplier",
	setting_type = "startup",
	default_value = 0.3,
	minimum_value = 0.01,
	maximum_value = 10,
	order = "a0"
}, {
	type = "double-setting",
	name = "tool_durability_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.01,
	maximum_value = 10,
	order = "a1"
}, {
	type = "int-setting",
	name = "normal_level",
	setting_type = "startup",
	default_value = 0,
	minimum_value = 0,
	maximum_value = 20,
	order = "b0"
}, {
	type = "double-setting",
	name = "normal_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "b1"
}, {
	type = "int-setting",
	name = "uncommon_level",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 1,
	maximum_value = 20,
	order = "b2"
}, {
	type = "double-setting",
	name = "uncommon_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "b3"
}, {
	type = "int-setting",
	name = "rare_level",
	setting_type = "startup",
	default_value = 2,
	minimum_value = 1,
	maximum_value = 20,
	order = "b4"
}, {
	type = "double-setting",
	name = "rare_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "b5"
}, {
	type = "int-setting",
	name = "epic_level",
	setting_type = "startup",
	default_value = 3,
	minimum_value = 1,
	maximum_value = 20,
	order = "b6"
}, {
	type = "double-setting",
	name = "epic_next_probability",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "b7"
}, {
	type = "int-setting",
	name = "legendary_level",
	setting_type = "startup",
	default_value = 5,
	minimum_value = 1,
	maximum_value = 20,
	order = "b8"
}, {
	type = "double-setting",
	name = "quality_module_1",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0,
	maximum_value = 1,
	order = "c0"
}, {
	type = "double-setting",
	name = "quality_module_2",
	setting_type = "startup",
	default_value = 0.2,
	minimum_value = 0,
	maximum_value = 1,
	order = "c1"
}, {
	type = "double-setting",
	name = "quality_module_3",
	setting_type = "startup",
	default_value = 0.25,
	minimum_value = 0,
	maximum_value = 1,
	order = "c2"
}, {
	type = "double-setting",
	name = "speed_module_1",
	setting_type = "startup",
	default_value = -0.1,
	minimum_value = -1,
	maximum_value = 0,
	order = "c3"
}, {
	type = "double-setting",
	name = "speed_module_2",
	setting_type = "startup",
	default_value = -0.15,
	minimum_value = -1,
	maximum_value = 0,
	order = "c4"
}, {
	type = "double-setting",
	name = "speed_module_3",
	setting_type = "startup",
	default_value = -0.25,
	minimum_value = -1,
	maximum_value = 0,
	order = "c5"
}, {
	type = "bool-setting",
	name = "unlink_quality_from_speed",
	setting_type = "startup",
	default_value = false,
	order = "c6"
}, {
	type = "bool-setting",
	name = "quality_affects_energy_usage_crafting",
	setting_type = "startup",
	default_value = false,
	order = "d0"
}, {
	type = "double-setting",
	name = "crafting_machine_energy_usage_reduction",
	setting_type = "startup",
	default_value = 1 / 6,
	minimum_value = 0,
	maximum_value = 1,
	order = "d1"
}, {
	type = "bool-setting",
	name = "quality_affects_module_slots_crafting",
	setting_type = "startup",
	default_value = false,
	order = "d2"
}, {
	type = "double-setting",
	name = "crafting_machine_module_slots_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "d3"
}, {
	type = "double-setting",
	name = "crafting_machine_speed_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "d4"
}, {
	type = "double-setting",
	name = "inserter_speed_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "e0"
}, {
	type = "double-setting",
	name = "accumulator_capacity_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "f0"
}, {
	type = "double-setting",
	name = "electric_pole_wire_reach_bonus",
	setting_type = "startup",
	default_value = 2,
	minimum_value = 0.1,
	maximum_value = 20,
	order = "f1"
}, {
	type = "double-setting",
	name = "electric_pole_supply_area_distance_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "f2"
}, {
	type = "bool-setting",
	name = "quality_affects_module_slots_beacon",
	setting_type = "startup",
	default_value = false,
	order = "g0"
}, {
	type = "double-setting",
	name = "beacon_module_slots_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "g1"
}, {
	type = "bool-setting",
	name = "quality_affects_supply_area_distance_beacon",
	setting_type = "startup",
	default_value = false,
	order = "g2"
}, {
	type = "double-setting",
	name = "beacon_supply_area_distance_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "g3"
}, {
	type = "double-setting",
	name = "distribution_effectivity_bonus_per_quality_level",
	setting_type = "startup",
	default_value = 0,
	minimum_value = 0,
	maximum_value = 1,
	order = "g4"
}, {
	type = "double-setting",
	name = "beacon_power_usage_reduction",
	setting_type = "startup",
	default_value = 1 / 6,
	minimum_value = 0,
	maximum_value = 1,
	order = "g5"
}, {
	type = "double-setting",
	name = "mining_drill_resource_drain_reduction",
	setting_type = "startup",
	default_value = 1 / 6,
	minimum_value = 0,
	maximum_value = 1,
	order = "h0"
}, {
	type = "bool-setting",
	name = "quality_affects_mining_radius",
	setting_type = "startup",
	default_value = false,
	order = "h1"
}, {
	type = "double-setting",
	name = "mining_drill_mining_radius_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "h2"
}, {
	type = "bool-setting",
	name = "quality_affects_module_slots_mining",
	setting_type = "startup",
	default_value = false,
	order = "h3"
}, {
	type = "double-setting",
	name = "mining_drill_module_slots_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "h4"
}, {
	type = "bool-setting",
	name = "lab_uses_quality_drain_modifier",
	setting_type = "startup",
	default_value = false,
	order = "j0"
}, {
	type = "int-setting",
	name = "uncommon_science_pack_drain",
	setting_type = "startup",
	default_value = 99,
	minimum_value = 1,
	maximum_value = 100,
	order = "j1"
}, {
	type = "int-setting",
	name = "rare_science_pack_drain",
	setting_type = "startup",
	default_value = 98,
	minimum_value = 1,
	maximum_value = 100,
	order = "j2"
}, {
	type = "int-setting",
	name = "epic_science_pack_drain",
	setting_type = "startup",
	default_value = 97,
	minimum_value = 1,
	maximum_value = 100,
	order = "j3"
}, {
	type = "int-setting",
	name = "legendary_science_pack_drain",
	setting_type = "startup",
	default_value = 95,
	minimum_value = 1,
	maximum_value = 100,
	order = "j4"
}, {
	type = "bool-setting",
	name = "quality_affects_module_slots_lab",
	setting_type = "startup",
	default_value = false,
	order = "j5"
}, {
	type = "double-setting",
	name = "lab_module_slots_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "j6"
}, {
	type = "double-setting",
	name = "lab_research_speed_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "j7"
}, {
	type = "bool-setting",
	name = "quality_affects_inventory_size_container",
	setting_type = "startup",
	default_value = true,
	order = "k0"
}, {
	type = "bool-setting",
	name = "quality_affects_inventory_size_cargo_wagon",
	setting_type = "startup",
	default_value = false,
	order = "k1"
}, {
	type = "double-setting",
	name = "inventory_size_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "k2"
}, {
	type = "bool-setting",
	name = "quality_affects_capacity_fluid_wagon",
	setting_type = "startup",
	default_value = false,
	order = "k3"
}, {
	type = "double-setting",
	name = "fluid_wagon_capacity_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "k4"
}, {
	type = "double-setting",
	name = "equipment_grid_width_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "k5"
}, {
	type = "double-setting",
	name = "equipment_grid_height_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "k6"
}, {
	type = "bool-setting",
	name = "charging_station_count_affected_by_quality_equipment",
	setting_type = "startup",
	default_value = false,
	order = "l0"
}, {
	type = "bool-setting",
	name = "charging_station_count_affected_by_quality",
	setting_type = "startup",
	default_value = false,
	order = "l1"
}, {
	type = "double-setting",
	name = "logistic_cell_charging_energy_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "l2"
}, {
	type = "double-setting",
	name = "logistic_cell_charging_station_count_bonus",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "l2"
}, {
	type = "double-setting",
	name = "flying_robot_max_energy_multiplier",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0.1,
	maximum_value = 10,
	order = "l3"
}, {
	type = "double-setting",
	name = "range_multiplier",
	setting_type = "startup",
	default_value = 0.1,
	minimum_value = 0.01,
	maximum_value = 2,
	order = "m1"
}})

if mods["space-age"] then
	data:extend({{
		type = "double-setting",
		name = "fork_chance_increase_per_quality_level_chain_active_trigger",
		setting_type = "startup",
		default_value = 0.1,
		minimum_value = 0,
		maximum_value = 1,
		order = "m0"
	}, {
		type = "int-setting",
		name = "asteroid_collector_collection_radius_bonus",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 0,
		maximum_value = 10,
		order = "n0"
	}, {
		type = "int-setting",
		name = "inventory_size_quality_increase_collector",
		setting_type = "startup",
		default_value = 5,
		minimum_value = 0,
		maximum_value = 20,
		order = "n1"
	}, {
		type = "int-setting",
		name = "arm_inventory_size_quality_increase_collector",
		setting_type = "startup",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 10,
		order = "n2"
	}, {
		type = "double-setting",
		name = "energy_usage_quality_scaling_collector",
		setting_type = "startup",
		default_value = 0.1,
		minimum_value = 0,
		maximum_value = 1,
		order = "n3"
	}, {
		type = "int-setting",
		name = "arm_count_quality_scaling_collector",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 0,
		maximum_value = 10,
		order = "n4"
	}, {
		type = "double-setting",
		name = "arm_speed_quality_scaling_collector",
		setting_type = "startup",
		default_value = 0.1,
		minimum_value = 0,
		maximum_value = 1,
		order = "n5"
	}, {
		type = "double-setting",
		name = "arm_angular_speed_cap_quality_scaling_collector",
		setting_type = "startup",
		default_value = 0.1,
		minimum_value = 0,
		maximum_value = 1,
		order = "n6"
	}})
end
