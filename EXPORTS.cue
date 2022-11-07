// All greymatter config objects for core componenents drawn together
// for simultaneous deployment.

// EXPORTS.cue is the finalized configuration file that gets read by a GitOPS
// tool to import and sync configuration with a remote deployed greymatter
// instance.

// You may specify which array of configs you'd like to sync or bundle them all
// in one. We recommend splitting out your configs through namespaces such as
// core services, business applications, etc...

// example evaluation commands:
// cue eval -c EXPORTS.cue --out yaml -e grocerylist_config
// cue eval -c EXPORTS.cue --out json -e configs
// cue eval -c EXPORTS.cue -e configs

// This package name refers to your target mesh. We are attempting to write
// configs for the "exports" greymatter mesh so we all our top level
// package "exports". This does not need to match the cue module name.
package exports

import (
	// Point to the services folder in the grocerylist package since that's where we actually 
	// define our mesh configurations for individual applications/services.
	core "grocerylist.module/greymatter/core:grocerylist"
	grocerylist "grocerylist.module/greymatter/grocerylist:grocerylist"
	"list"
)

// This code lets you specify the number of kiwi services. 2nd arg to list.Range()
// There are 1000 services defined in the project dir
// kiwi: [for i in list.Range(1,10,1) {

//    grocerylist["Tangerine_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Tangerine_1.config,
		grocerylist.Tangerine_2.config,
		grocerylist.Tangerine_3.config,
		grocerylist.Tangerine_4.config,
		grocerylist.Tangerine_5.config,
		grocerylist.Tangerine_6.config,
		grocerylist.Tangerine_7.config,
		grocerylist.Tangerine_8.config,
		grocerylist.Tangerine_9.config,
		grocerylist.Tangerine_10.config,
		grocerylist.Tangerine_11.config,
		grocerylist.Tangerine_12.config,
		grocerylist.Tangerine_13.config,
		grocerylist.Tangerine_14.config,
		grocerylist.Tangerine_15.config,
		grocerylist.Tangerine_16.config,
		grocerylist.Tangerine_17.config,
		grocerylist.Tangerine_18.config,
		grocerylist.Tangerine_19.config,
		grocerylist.Tangerine_20.config,
		grocerylist.Tangerine_21.config,
		grocerylist.Tangerine_22.config,
		grocerylist.Tangerine_23.config,
		grocerylist.Tangerine_24.config,
		grocerylist.Tangerine_25.config,
		grocerylist.Tangerine_26.config,
		grocerylist.Tangerine_27.config,
		grocerylist.Tangerine_28.config,
		grocerylist.Tangerine_29.config,
		grocerylist.Tangerine_30.config,
		grocerylist.Tangerine_31.config,
		grocerylist.Tangerine_32.config,
		grocerylist.Tangerine_33.config,
		grocerylist.Tangerine_34.config,
		grocerylist.Tangerine_35.config,
		grocerylist.Tangerine_36.config,
		grocerylist.Tangerine_37.config,
		grocerylist.Tangerine_38.config,
		grocerylist.Tangerine_39.config,
		grocerylist.Tangerine_40.config,
		grocerylist.Tangerine_41.config,
		grocerylist.Tangerine_42.config,
		grocerylist.Tangerine_43.config,
		grocerylist.Tangerine_44.config,
		grocerylist.Tangerine_45.config,
		grocerylist.Tangerine_46.config,
		grocerylist.Tangerine_47.config,
		grocerylist.Tangerine_48.config,
		grocerylist.Tangerine_49.config,
		grocerylist.Tangerine_50.config,
		// grocerylist.Tangerine_51.config,
		// grocerylist.Tangerine_52.config,
		// grocerylist.Tangerine_53.config,
		// grocerylist.Tangerine_54.config,
		// grocerylist.Tangerine_55.config,
		// grocerylist.Tangerine_56.config,
		// grocerylist.Tangerine_57.config,
		// grocerylist.Tangerine_58.config,
		// grocerylist.Tangerine_59.config,
		// grocerylist.Tangerine_60.config,
		// grocerylist.Tangerine_61.config,
		// grocerylist.Tangerine_62.config,
		// grocerylist.Tangerine_63.config,
		// grocerylist.Tangerine_64.config,
		// grocerylist.Tangerine_65.config,
		// grocerylist.Tangerine_66.config,
		// grocerylist.Tangerine_67.config,
		// grocerylist.Tangerine_68.config,
		// grocerylist.Tangerine_69.config,
		// grocerylist.Tangerine_70.config,
		// grocerylist.Tangerine_71.config,
		// grocerylist.Tangerine_72.config,
		// grocerylist.Tangerine_73.config,
		// grocerylist.Tangerine_74.config,
		// grocerylist.Tangerine_75.config,
		// grocerylist.Tangerine_76.config,
		// grocerylist.Tangerine_77.config,
		// grocerylist.Tangerine_78.config,
		// grocerylist.Tangerine_79.config,
		// grocerylist.Tangerine_80.config,
		// grocerylist.Tangerine_81.config,
		// grocerylist.Tangerine_82.config,
		// grocerylist.Tangerine_83.config,
		// grocerylist.Tangerine_84.config,
		// grocerylist.Tangerine_85.config,
		// grocerylist.Tangerine_86.config,
		// grocerylist.Tangerine_87.config,
		// grocerylist.Tangerine_88.config,
		// grocerylist.Tangerine_89.config,
		// grocerylist.Tangerine_90.config,
		// grocerylist.Tangerine_91.config,
		// grocerylist.Tangerine_92.config,
		// grocerylist.Tangerine_93.config,
		// grocerylist.Tangerine_94.config,
		// grocerylist.Tangerine_95.config,
		// grocerylist.Tangerine_96.config,
		// grocerylist.Tangerine_97.config,
		// grocerylist.Tangerine_98.config,
		// grocerylist.Tangerine_99.config,
		// grocerylist.Tangerine_100.config,
		// grocerylist.Tangerine_101.config,
		// grocerylist.Tangerine_102.config,
		// grocerylist.Tangerine_103.config,
		// grocerylist.Tangerine_104.config,
		// grocerylist.Tangerine_105.config,
		// grocerylist.Tangerine_106.config,
		// grocerylist.Tangerine_107.config,
		// grocerylist.Tangerine_108.config,
		// grocerylist.Tangerine_109.config,
		// grocerylist.Tangerine_110.config,
		// grocerylist.Tangerine_111.config,
		// grocerylist.Tangerine_112.config,
		// grocerylist.Tangerine_113.config,
		// grocerylist.Tangerine_114.config,
		// grocerylist.Tangerine_115.config,
		// grocerylist.Tangerine_116.config,
		// grocerylist.Tangerine_117.config,
		// grocerylist.Tangerine_118.config,
		// grocerylist.Tangerine_119.config,
		// grocerylist.Tangerine_120.config,
		// grocerylist.Tangerine_121.config,
		// grocerylist.Tangerine_122.config,
		// grocerylist.Tangerine_123.config,
		// grocerylist.Tangerine_124.config,
		// grocerylist.Tangerine_125.config,
		// grocerylist.Tangerine_126.config,
		// grocerylist.Tangerine_127.config,
		// grocerylist.Tangerine_128.config,
		// grocerylist.Tangerine_129.config,
		// grocerylist.Tangerine_130.config,
		// grocerylist.Tangerine_131.config,
		// grocerylist.Tangerine_132.config,
		// grocerylist.Tangerine_133.config,
		// grocerylist.Tangerine_134.config,
		// grocerylist.Tangerine_135.config,
		// grocerylist.Tangerine_136.config,
		// grocerylist.Tangerine_137.config,
		// grocerylist.Tangerine_138.config,
		// grocerylist.Tangerine_139.config,
		// grocerylist.Tangerine_140.config,
		// grocerylist.Tangerine_141.config,
		// grocerylist.Tangerine_142.config,
		// grocerylist.Tangerine_143.config,
		// grocerylist.Tangerine_144.config,
		// grocerylist.Tangerine_145.config,
		// grocerylist.Tangerine_146.config,
		// grocerylist.Tangerine_147.config,
		// grocerylist.Tangerine_148.config,
		// grocerylist.Tangerine_149.config,
		// grocerylist.Tangerine_150.config,

	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
