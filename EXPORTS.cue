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

//    grocerylist["Peach_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Peach_1.config,
		grocerylist.Peach_2.config,
		grocerylist.Peach_3.config,
		grocerylist.Peach_4.config,
		grocerylist.Peach_5.config,
		grocerylist.Peach_6.config,
		grocerylist.Peach_7.config,
		grocerylist.Peach_8.config,
		grocerylist.Peach_9.config,
		grocerylist.Peach_10.config,
		grocerylist.Peach_11.config,
		grocerylist.Peach_12.config,
		grocerylist.Peach_13.config,
		grocerylist.Peach_14.config,
		grocerylist.Peach_15.config,
		grocerylist.Peach_16.config,
		grocerylist.Peach_17.config,
		grocerylist.Peach_18.config,
		grocerylist.Peach_19.config,
		grocerylist.Peach_20.config,
		grocerylist.Peach_21.config,
		grocerylist.Peach_22.config,
		grocerylist.Peach_23.config,
		grocerylist.Peach_24.config,
		grocerylist.Peach_25.config,
		grocerylist.Peach_26.config,
		grocerylist.Peach_27.config,
		grocerylist.Peach_28.config,
		grocerylist.Peach_29.config,
		grocerylist.Peach_30.config,
		grocerylist.Peach_31.config,
		grocerylist.Peach_32.config,
		grocerylist.Peach_33.config,
		grocerylist.Peach_34.config,
		grocerylist.Peach_35.config,
		grocerylist.Peach_36.config,
		grocerylist.Peach_37.config,
		grocerylist.Peach_38.config,
		grocerylist.Peach_39.config,
		grocerylist.Peach_40.config,
		grocerylist.Peach_41.config,
		grocerylist.Peach_42.config,
		grocerylist.Peach_43.config,
		grocerylist.Peach_44.config,
		grocerylist.Peach_45.config,
		grocerylist.Peach_46.config,
		grocerylist.Peach_47.config,
		grocerylist.Peach_48.config,
		grocerylist.Peach_49.config,
		grocerylist.Peach_50.config,
		// grocerylist.Peach_51.config,
		// grocerylist.Peach_52.config,
		// grocerylist.Peach_53.config,
		// grocerylist.Peach_54.config,
		// grocerylist.Peach_55.config,
		// grocerylist.Peach_56.config,
		// grocerylist.Peach_57.config,
		// grocerylist.Peach_58.config,
		// grocerylist.Peach_59.config,
		// grocerylist.Peach_60.config,
		// grocerylist.Peach_61.config,
		// grocerylist.Peach_62.config,
		// grocerylist.Peach_63.config,
		// grocerylist.Peach_64.config,
		// grocerylist.Peach_65.config,
		// grocerylist.Peach_66.config,
		// grocerylist.Peach_67.config,
		// grocerylist.Peach_68.config,
		// grocerylist.Peach_69.config,
		// grocerylist.Peach_70.config,
		// grocerylist.Peach_71.config,
		// grocerylist.Peach_72.config,
		// grocerylist.Peach_73.config,
		// grocerylist.Peach_74.config,
		// grocerylist.Peach_75.config,
		// grocerylist.Peach_76.config,
		// grocerylist.Peach_77.config,
		// grocerylist.Peach_78.config,
		// grocerylist.Peach_79.config,
		// grocerylist.Peach_80.config,
		// grocerylist.Peach_81.config,
		// grocerylist.Peach_82.config,
		// grocerylist.Peach_83.config,
		// grocerylist.Peach_84.config,
		// grocerylist.Peach_85.config,
		// grocerylist.Peach_86.config,
		// grocerylist.Peach_87.config,
		// grocerylist.Peach_88.config,
		// grocerylist.Peach_89.config,
		// grocerylist.Peach_90.config,
		// grocerylist.Peach_91.config,
		// grocerylist.Peach_92.config,
		// grocerylist.Peach_93.config,
		// grocerylist.Peach_94.config,
		// grocerylist.Peach_95.config,
		// grocerylist.Peach_96.config,
		// grocerylist.Peach_97.config,
		// grocerylist.Peach_98.config,
		// grocerylist.Peach_99.config,
		// grocerylist.Peach_100.config,
		// grocerylist.Peach_101.config,
		// grocerylist.Peach_102.config,
		// grocerylist.Peach_103.config,
		// grocerylist.Peach_104.config,
		// grocerylist.Peach_105.config,
		// grocerylist.Peach_106.config,
		// grocerylist.Peach_107.config,
		// grocerylist.Peach_108.config,
		// grocerylist.Peach_109.config,
		// grocerylist.Peach_110.config,
		// grocerylist.Peach_111.config,
		// grocerylist.Peach_112.config,
		// grocerylist.Peach_113.config,
		// grocerylist.Peach_114.config,
		// grocerylist.Peach_115.config,
		// grocerylist.Peach_116.config,
		// grocerylist.Peach_117.config,
		// grocerylist.Peach_118.config,
		// grocerylist.Peach_119.config,
		// grocerylist.Peach_120.config,
		// grocerylist.Peach_121.config,
		// grocerylist.Peach_122.config,
		// grocerylist.Peach_123.config,
		// grocerylist.Peach_124.config,
		// grocerylist.Peach_125.config,
		// grocerylist.Peach_126.config,
		// grocerylist.Peach_127.config,
		// grocerylist.Peach_128.config,
		// grocerylist.Peach_129.config,
		// grocerylist.Peach_130.config,
		// grocerylist.Peach_131.config,
		// grocerylist.Peach_132.config,
		// grocerylist.Peach_133.config,
		// grocerylist.Peach_134.config,
		// grocerylist.Peach_135.config,
		// grocerylist.Peach_136.config,
		// grocerylist.Peach_137.config,
		// grocerylist.Peach_138.config,
		// grocerylist.Peach_139.config,
		// grocerylist.Peach_140.config,
		// grocerylist.Peach_141.config,
		// grocerylist.Peach_142.config,
		// grocerylist.Peach_143.config,
		// grocerylist.Peach_144.config,
		// grocerylist.Peach_145.config,
		// grocerylist.Peach_146.config,
		// grocerylist.Peach_147.config,
		// grocerylist.Peach_148.config,
		// grocerylist.Peach_149.config,
		// grocerylist.Peach_150.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
