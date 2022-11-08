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

//    grocerylist["Blueberry_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Blueberry_1.config,
		grocerylist.Blueberry_2.config,
		grocerylist.Blueberry_3.config,
		grocerylist.Blueberry_4.config,
		grocerylist.Blueberry_5.config,
		grocerylist.Blueberry_6.config,
		grocerylist.Blueberry_7.config,
		grocerylist.Blueberry_8.config,
		grocerylist.Blueberry_9.config,
		grocerylist.Blueberry_10.config,
		grocerylist.Blueberry_11.config,
		grocerylist.Blueberry_12.config,
		grocerylist.Blueberry_13.config,
		grocerylist.Blueberry_14.config,
		grocerylist.Blueberry_15.config,
		grocerylist.Blueberry_16.config,
		grocerylist.Blueberry_17.config,
		grocerylist.Blueberry_18.config,
		grocerylist.Blueberry_19.config,
		grocerylist.Blueberry_20.config,
		grocerylist.Blueberry_21.config,
		grocerylist.Blueberry_22.config,
		grocerylist.Blueberry_23.config,
		grocerylist.Blueberry_24.config,
		grocerylist.Blueberry_25.config,
		grocerylist.Blueberry_26.config,
		grocerylist.Blueberry_27.config,
		grocerylist.Blueberry_28.config,
		grocerylist.Blueberry_29.config,
		grocerylist.Blueberry_30.config,
		grocerylist.Blueberry_31.config,
		grocerylist.Blueberry_32.config,
		grocerylist.Blueberry_33.config,
		grocerylist.Blueberry_34.config,
		grocerylist.Blueberry_35.config,
		grocerylist.Blueberry_36.config,
		grocerylist.Blueberry_37.config,
		grocerylist.Blueberry_38.config,
		grocerylist.Blueberry_39.config,
		grocerylist.Blueberry_40.config,
		grocerylist.Blueberry_41.config,
		grocerylist.Blueberry_42.config,
		grocerylist.Blueberry_43.config,
		grocerylist.Blueberry_44.config,
		grocerylist.Blueberry_45.config,
		grocerylist.Blueberry_46.config,
		grocerylist.Blueberry_47.config,
		grocerylist.Blueberry_48.config,
		grocerylist.Blueberry_49.config,
		grocerylist.Blueberry_50.config,
		grocerylist.Blueberry_51.config,
		grocerylist.Blueberry_52.config,
		grocerylist.Blueberry_53.config,
		grocerylist.Blueberry_54.config,
		grocerylist.Blueberry_55.config,
		grocerylist.Blueberry_56.config,
		grocerylist.Blueberry_57.config,
		grocerylist.Blueberry_58.config,
		grocerylist.Blueberry_59.config,
		grocerylist.Blueberry_60.config,
		grocerylist.Blueberry_61.config,
		grocerylist.Blueberry_62.config,
		grocerylist.Blueberry_63.config,
		grocerylist.Blueberry_64.config,
		grocerylist.Blueberry_65.config,
		grocerylist.Blueberry_66.config,
		grocerylist.Blueberry_67.config,
		grocerylist.Blueberry_68.config,
		grocerylist.Blueberry_69.config,
		grocerylist.Blueberry_70.config,
		grocerylist.Blueberry_71.config,
		grocerylist.Blueberry_72.config,
		grocerylist.Blueberry_73.config,
		grocerylist.Blueberry_74.config,
		grocerylist.Blueberry_75.config,
		grocerylist.Blueberry_76.config,
		grocerylist.Blueberry_77.config,
		grocerylist.Blueberry_78.config,
		grocerylist.Blueberry_79.config,
		grocerylist.Blueberry_80.config,
		grocerylist.Blueberry_81.config,
		grocerylist.Blueberry_82.config,
		grocerylist.Blueberry_83.config,
		grocerylist.Blueberry_84.config,
		grocerylist.Blueberry_85.config,
		grocerylist.Blueberry_86.config,
		grocerylist.Blueberry_87.config,
		grocerylist.Blueberry_88.config,
		grocerylist.Blueberry_89.config,
		grocerylist.Blueberry_90.config,
		grocerylist.Blueberry_91.config,
		grocerylist.Blueberry_92.config,
		grocerylist.Blueberry_93.config,
		grocerylist.Blueberry_94.config,
		grocerylist.Blueberry_95.config,
		grocerylist.Blueberry_96.config,
		grocerylist.Blueberry_97.config,
		grocerylist.Blueberry_98.config,
		grocerylist.Blueberry_99.config,
		grocerylist.Blueberry_100.config,
		// grocerylist.Blueberry_101.config,
		// grocerylist.Blueberry_102.config,
		// grocerylist.Blueberry_103.config,
		// grocerylist.Blueberry_104.config,
		// grocerylist.Blueberry_105.config,
		// grocerylist.Blueberry_106.config,
		// grocerylist.Blueberry_107.config,
		// grocerylist.Blueberry_108.config,
		// grocerylist.Blueberry_109.config,
		// grocerylist.Blueberry_110.config,
		// grocerylist.Blueberry_111.config,
		// grocerylist.Blueberry_112.config,
		// grocerylist.Blueberry_113.config,
		// grocerylist.Blueberry_114.config,
		// grocerylist.Blueberry_115.config,
		// grocerylist.Blueberry_116.config,
		// grocerylist.Blueberry_117.config,
		// grocerylist.Blueberry_118.config,
		// grocerylist.Blueberry_119.config,
		// grocerylist.Blueberry_120.config,
		// grocerylist.Blueberry_121.config,
		// grocerylist.Blueberry_122.config,
		// grocerylist.Blueberry_123.config,
		// grocerylist.Blueberry_124.config,
		// grocerylist.Blueberry_125.config,
		// grocerylist.Blueberry_126.config,
		// grocerylist.Blueberry_127.config,
		// grocerylist.Blueberry_128.config,
		// grocerylist.Blueberry_129.config,
		// grocerylist.Blueberry_130.config,
		// grocerylist.Blueberry_131.config,
		// grocerylist.Blueberry_132.config,
		// grocerylist.Blueberry_133.config,
		// grocerylist.Blueberry_134.config,
		// grocerylist.Blueberry_135.config,
		// grocerylist.Blueberry_136.config,
		// grocerylist.Blueberry_137.config,
		// grocerylist.Blueberry_138.config,
		// grocerylist.Blueberry_139.config,
		// grocerylist.Blueberry_140.config,
		// grocerylist.Blueberry_141.config,
		// grocerylist.Blueberry_142.config,
		// grocerylist.Blueberry_143.config,
		// grocerylist.Blueberry_144.config,
		// grocerylist.Blueberry_145.config,
		// grocerylist.Blueberry_146.config,
		// grocerylist.Blueberry_147.config,
		// grocerylist.Blueberry_148.config,
		// grocerylist.Blueberry_149.config,
		// grocerylist.Blueberry_150.config,

	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
