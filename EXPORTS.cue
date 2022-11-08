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

//    grocerylist["Star_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Star_1.config,
		grocerylist.Star_2.config,
		grocerylist.Star_3.config,
		grocerylist.Star_4.config,
		grocerylist.Star_5.config,
		grocerylist.Star_6.config,
		grocerylist.Star_7.config,
		grocerylist.Star_8.config,
		grocerylist.Star_9.config,
		grocerylist.Star_10.config,
		grocerylist.Star_11.config,
		grocerylist.Star_12.config,
		grocerylist.Star_13.config,
		grocerylist.Star_14.config,
		grocerylist.Star_15.config,
		grocerylist.Star_16.config,
		grocerylist.Star_17.config,
		grocerylist.Star_18.config,
		grocerylist.Star_19.config,
		grocerylist.Star_20.config,
		grocerylist.Star_21.config,
		grocerylist.Star_22.config,
		grocerylist.Star_23.config,
		grocerylist.Star_24.config,
		grocerylist.Star_25.config,
		grocerylist.Star_26.config,
		grocerylist.Star_27.config,
		grocerylist.Star_28.config,
		grocerylist.Star_29.config,
		grocerylist.Star_30.config,
		grocerylist.Star_31.config,
		grocerylist.Star_32.config,
		grocerylist.Star_33.config,
		grocerylist.Star_34.config,
		grocerylist.Star_35.config,
		grocerylist.Star_36.config,
		grocerylist.Star_37.config,
		grocerylist.Star_38.config,
		grocerylist.Star_39.config,
		grocerylist.Star_40.config,
		grocerylist.Star_41.config,
		grocerylist.Star_42.config,
		grocerylist.Star_43.config,
		grocerylist.Star_44.config,
		grocerylist.Star_45.config,
		grocerylist.Star_46.config,
		grocerylist.Star_47.config,
		grocerylist.Star_48.config,
		grocerylist.Star_49.config,
		grocerylist.Star_50.config,
		grocerylist.Star_51.config,
		grocerylist.Star_52.config,
		grocerylist.Star_53.config,
		grocerylist.Star_54.config,
		grocerylist.Star_55.config,
		grocerylist.Star_56.config,
		grocerylist.Star_57.config,
		grocerylist.Star_58.config,
		grocerylist.Star_59.config,
		grocerylist.Star_60.config,
		grocerylist.Star_61.config,
		grocerylist.Star_62.config,
		grocerylist.Star_63.config,
		grocerylist.Star_64.config,
		grocerylist.Star_65.config,
		grocerylist.Star_66.config,
		grocerylist.Star_67.config,
		grocerylist.Star_68.config,
		grocerylist.Star_69.config,
		grocerylist.Star_70.config,
		grocerylist.Star_71.config,
		grocerylist.Star_72.config,
		grocerylist.Star_73.config,
		grocerylist.Star_74.config,
		grocerylist.Star_75.config,
		grocerylist.Star_76.config,
		grocerylist.Star_77.config,
		grocerylist.Star_78.config,
		grocerylist.Star_79.config,
		grocerylist.Star_80.config,
		grocerylist.Star_81.config,
		grocerylist.Star_82.config,
		grocerylist.Star_83.config,
		grocerylist.Star_84.config,
		grocerylist.Star_85.config,
		grocerylist.Star_86.config,
		grocerylist.Star_87.config,
		grocerylist.Star_88.config,
		grocerylist.Star_89.config,
		grocerylist.Star_90.config,
		grocerylist.Star_91.config,
		grocerylist.Star_92.config,
		grocerylist.Star_93.config,
		grocerylist.Star_94.config,
		grocerylist.Star_95.config,
		grocerylist.Star_96.config,
		grocerylist.Star_97.config,
		grocerylist.Star_98.config,
		grocerylist.Star_99.config,
		grocerylist.Star_100.config,
		// grocerylist.Star_101.config,
		// grocerylist.Star_102.config,
		// grocerylist.Star_103.config,
		// grocerylist.Star_104.config,
		// grocerylist.Star_105.config,
		// grocerylist.Star_106.config,
		// grocerylist.Star_107.config,
		// grocerylist.Star_108.config,
		// grocerylist.Star_109.config,
		// grocerylist.Star_110.config,
		// grocerylist.Star_111.config,
		// grocerylist.Star_112.config,
		// grocerylist.Star_113.config,
		// grocerylist.Star_114.config,
		// grocerylist.Star_115.config,
		// grocerylist.Star_116.config,
		// grocerylist.Star_117.config,
		// grocerylist.Star_118.config,
		// grocerylist.Star_119.config,
		// grocerylist.Star_120.config,
		// grocerylist.Star_121.config,
		// grocerylist.Star_122.config,
		// grocerylist.Star_123.config,
		// grocerylist.Star_124.config,
		// grocerylist.Star_125.config,
		// grocerylist.Star_126.config,
		// grocerylist.Star_127.config,
		// grocerylist.Star_128.config,
		// grocerylist.Star_129.config,
		// grocerylist.Star_130.config,
		// grocerylist.Star_131.config,
		// grocerylist.Star_132.config,
		// grocerylist.Star_133.config,
		// grocerylist.Star_134.config,
		// grocerylist.Star_135.config,
		// grocerylist.Star_136.config,
		// grocerylist.Star_137.config,
		// grocerylist.Star_138.config,
		// grocerylist.Star_139.config,
		// grocerylist.Star_140.config,
		// grocerylist.Star_141.config,
		// grocerylist.Star_142.config,
		// grocerylist.Star_143.config,
		// grocerylist.Star_144.config,
		// grocerylist.Star_145.config,
		// grocerylist.Star_146.config,
		// grocerylist.Star_147.config,
		// grocerylist.Star_148.config,
		// grocerylist.Star_149.config,
		// grocerylist.Star_150.config,

	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
