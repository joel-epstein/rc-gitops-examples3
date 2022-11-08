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

//    grocerylist["Grape_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Grape_1.config,
		grocerylist.Grape_2.config,
		grocerylist.Grape_3.config,
		grocerylist.Grape_4.config,
		grocerylist.Grape_5.config,
		grocerylist.Grape_6.config,
		grocerylist.Grape_7.config,
		grocerylist.Grape_8.config,
		grocerylist.Grape_9.config,
		grocerylist.Grape_10.config,
		grocerylist.Grape_11.config,
		grocerylist.Grape_12.config,
		grocerylist.Grape_13.config,
		grocerylist.Grape_14.config,
		grocerylist.Grape_15.config,
		grocerylist.Grape_16.config,
		grocerylist.Grape_17.config,
		grocerylist.Grape_18.config,
		grocerylist.Grape_19.config,
		grocerylist.Grape_20.config,
		grocerylist.Grape_21.config,
		grocerylist.Grape_22.config,
		grocerylist.Grape_23.config,
		grocerylist.Grape_24.config,
		grocerylist.Grape_25.config,
		grocerylist.Grape_26.config,
		grocerylist.Grape_27.config,
		grocerylist.Grape_28.config,
		grocerylist.Grape_29.config,
		grocerylist.Grape_30.config,
		grocerylist.Grape_31.config,
		grocerylist.Grape_32.config,
		grocerylist.Grape_33.config,
		grocerylist.Grape_34.config,
		grocerylist.Grape_35.config,
		grocerylist.Grape_36.config,
		grocerylist.Grape_37.config,
		grocerylist.Grape_38.config,
		grocerylist.Grape_39.config,
		grocerylist.Grape_40.config,
		grocerylist.Grape_41.config,
		grocerylist.Grape_42.config,
		grocerylist.Grape_43.config,
		grocerylist.Grape_44.config,
		grocerylist.Grape_45.config,
		grocerylist.Grape_46.config,
		grocerylist.Grape_47.config,
		grocerylist.Grape_48.config,
		grocerylist.Grape_49.config,
		grocerylist.Grape_50.config,
		grocerylist.Grape_51.config,
		grocerylist.Grape_52.config,
		grocerylist.Grape_53.config,
		grocerylist.Grape_54.config,
		grocerylist.Grape_55.config,
		grocerylist.Grape_56.config,
		grocerylist.Grape_57.config,
		grocerylist.Grape_58.config,
		grocerylist.Grape_59.config,
		grocerylist.Grape_60.config,
		grocerylist.Grape_61.config,
		grocerylist.Grape_62.config,
		grocerylist.Grape_63.config,
		grocerylist.Grape_64.config,
		grocerylist.Grape_65.config,
		grocerylist.Grape_66.config,
		grocerylist.Grape_67.config,
		grocerylist.Grape_68.config,
		grocerylist.Grape_69.config,
		grocerylist.Grape_70.config,
		grocerylist.Grape_71.config,
		grocerylist.Grape_72.config,
		grocerylist.Grape_73.config,
		grocerylist.Grape_74.config,
		grocerylist.Grape_75.config,
		grocerylist.Grape_76.config,
		grocerylist.Grape_77.config,
		grocerylist.Grape_78.config,
		grocerylist.Grape_79.config,
		grocerylist.Grape_80.config,
		grocerylist.Grape_81.config,
		grocerylist.Grape_82.config,
		grocerylist.Grape_83.config,
		grocerylist.Grape_84.config,
		grocerylist.Grape_85.config,
		grocerylist.Grape_86.config,
		grocerylist.Grape_87.config,
		grocerylist.Grape_88.config,
		grocerylist.Grape_89.config,
		grocerylist.Grape_90.config,
		grocerylist.Grape_91.config,
		grocerylist.Grape_92.config,
		grocerylist.Grape_93.config,
		grocerylist.Grape_94.config,
		grocerylist.Grape_95.config,
		grocerylist.Grape_96.config,
		grocerylist.Grape_97.config,
		grocerylist.Grape_98.config,
		grocerylist.Grape_99.config,
		grocerylist.Grape_100.config,
		// grocerylist.Grape_101.config,
		// grocerylist.Grape_102.config,
		// grocerylist.Grape_103.config,
		// grocerylist.Grape_104.config,
		// grocerylist.Grape_105.config,
		// grocerylist.Grape_106.config,
		// grocerylist.Grape_107.config,
		// grocerylist.Grape_108.config,
		// grocerylist.Grape_109.config,
		// grocerylist.Grape_110.config,
		// grocerylist.Grape_111.config,
		// grocerylist.Grape_112.config,
		// grocerylist.Grape_113.config,
		// grocerylist.Grape_114.config,
		// grocerylist.Grape_115.config,
		// grocerylist.Grape_116.config,
		// grocerylist.Grape_117.config,
		// grocerylist.Grape_118.config,
		// grocerylist.Grape_119.config,
		// grocerylist.Grape_120.config,
		// grocerylist.Grape_121.config,
		// grocerylist.Grape_122.config,
		// grocerylist.Grape_123.config,
		// grocerylist.Grape_124.config,
		// grocerylist.Grape_125.config,
		// grocerylist.Grape_126.config,
		// grocerylist.Grape_127.config,
		// grocerylist.Grape_128.config,
		// grocerylist.Grape_129.config,
		// grocerylist.Grape_130.config,
		// grocerylist.Grape_131.config,
		// grocerylist.Grape_132.config,
		// grocerylist.Grape_133.config,
		// grocerylist.Grape_134.config,
		// grocerylist.Grape_135.config,
		// grocerylist.Grape_136.config,
		// grocerylist.Grape_137.config,
		// grocerylist.Grape_138.config,
		// grocerylist.Grape_139.config,
		// grocerylist.Grape_140.config,
		// grocerylist.Grape_141.config,
		// grocerylist.Grape_142.config,
		// grocerylist.Grape_143.config,
		// grocerylist.Grape_144.config,
		// grocerylist.Grape_145.config,
		// grocerylist.Grape_146.config,
		// grocerylist.Grape_147.config,
		// grocerylist.Grape_148.config,
		// grocerylist.Grape_149.config,
		// grocerylist.Grape_150.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
