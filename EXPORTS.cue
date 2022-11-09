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

//    grocerylist["Melon_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Melon_1.config,
		grocerylist.Melon_2.config,
		grocerylist.Melon_3.config,
		grocerylist.Melon_4.config,
		grocerylist.Melon_5.config,
		grocerylist.Melon_6.config,
		grocerylist.Melon_7.config,
		grocerylist.Melon_8.config,
		grocerylist.Melon_9.config,
		grocerylist.Melon_10.config,
		grocerylist.Melon_11.config,
		grocerylist.Melon_12.config,
		grocerylist.Melon_13.config,
		grocerylist.Melon_14.config,
		grocerylist.Melon_15.config,
		grocerylist.Melon_16.config,
		grocerylist.Melon_17.config,
		grocerylist.Melon_18.config,
		grocerylist.Melon_19.config,
		grocerylist.Melon_20.config,
		grocerylist.Melon_21.config,
		grocerylist.Melon_22.config,
		grocerylist.Melon_23.config,
		grocerylist.Melon_24.config,
		grocerylist.Melon_25.config,
		grocerylist.Melon_26.config,
		grocerylist.Melon_27.config,
		grocerylist.Melon_28.config,
		grocerylist.Melon_29.config,
		grocerylist.Melon_30.config,
		grocerylist.Melon_31.config,
		grocerylist.Melon_32.config,
		grocerylist.Melon_33.config,
		grocerylist.Melon_34.config,
		grocerylist.Melon_35.config,
		grocerylist.Melon_36.config,
		grocerylist.Melon_37.config,
		grocerylist.Melon_38.config,
		grocerylist.Melon_39.config,
		grocerylist.Melon_40.config,
		grocerylist.Melon_41.config,
		grocerylist.Melon_42.config,
		grocerylist.Melon_43.config,
		grocerylist.Melon_44.config,
		grocerylist.Melon_45.config,
		grocerylist.Melon_46.config,
		grocerylist.Melon_47.config,
		grocerylist.Melon_48.config,
		grocerylist.Melon_49.config,
		grocerylist.Melon_50.config,
		grocerylist.Melon_51.config,
		grocerylist.Melon_52.config,
		grocerylist.Melon_53.config,
		grocerylist.Melon_54.config,
		grocerylist.Melon_55.config,
		grocerylist.Melon_56.config,
		grocerylist.Melon_57.config,
		grocerylist.Melon_58.config,
		grocerylist.Melon_59.config,
		grocerylist.Melon_60.config,
		grocerylist.Melon_61.config,
		grocerylist.Melon_62.config,
		grocerylist.Melon_63.config,
		grocerylist.Melon_64.config,
		grocerylist.Melon_65.config,
		grocerylist.Melon_66.config,
		grocerylist.Melon_67.config,
		grocerylist.Melon_68.config,
		grocerylist.Melon_69.config,
		grocerylist.Melon_70.config,
		grocerylist.Melon_71.config,
		grocerylist.Melon_72.config,
		grocerylist.Melon_73.config,
		grocerylist.Melon_74.config,
		grocerylist.Melon_75.config,
		grocerylist.Melon_76.config,
		grocerylist.Melon_77.config,
		grocerylist.Melon_78.config,
		grocerylist.Melon_79.config,
		grocerylist.Melon_80.config,
		grocerylist.Melon_81.config,
		grocerylist.Melon_82.config,
		grocerylist.Melon_83.config,
		grocerylist.Melon_84.config,
		grocerylist.Melon_85.config,
		grocerylist.Melon_86.config,
		grocerylist.Melon_87.config,
		grocerylist.Melon_88.config,
		grocerylist.Melon_89.config,
		grocerylist.Melon_90.config,
		grocerylist.Melon_91.config,
		grocerylist.Melon_92.config,
		grocerylist.Melon_93.config,
		grocerylist.Melon_94.config,
		grocerylist.Melon_95.config,
		grocerylist.Melon_96.config,
		grocerylist.Melon_97.config,
		grocerylist.Melon_98.config,
		grocerylist.Melon_99.config,
		grocerylist.Melon_100.config,
		grocerylist.Melon_101.config,
		grocerylist.Melon_102.config,
		grocerylist.Melon_103.config,
		grocerylist.Melon_104.config,
		grocerylist.Melon_105.config,
		grocerylist.Melon_106.config,
		grocerylist.Melon_107.config,
		grocerylist.Melon_108.config,
		grocerylist.Melon_109.config,
		grocerylist.Melon_110.config,
		grocerylist.Melon_111.config,
		grocerylist.Melon_112.config,
		grocerylist.Melon_113.config,
		grocerylist.Melon_114.config,
		grocerylist.Melon_115.config,
		grocerylist.Melon_116.config,
		grocerylist.Melon_117.config,
		grocerylist.Melon_118.config,
		grocerylist.Melon_119.config,
		grocerylist.Melon_120.config,
		grocerylist.Melon_121.config,
		grocerylist.Melon_122.config,
		grocerylist.Melon_123.config,
		grocerylist.Melon_124.config,
		grocerylist.Melon_125.config,
		grocerylist.Melon_126.config,
		grocerylist.Melon_127.config,
		grocerylist.Melon_128.config,
		grocerylist.Melon_129.config,
		grocerylist.Melon_130.config,
		grocerylist.Melon_131.config,
		grocerylist.Melon_132.config,
		grocerylist.Melon_133.config,
		grocerylist.Melon_134.config,
		grocerylist.Melon_135.config,
		grocerylist.Melon_136.config,
		grocerylist.Melon_137.config,
		grocerylist.Melon_138.config,
		grocerylist.Melon_139.config,
		grocerylist.Melon_140.config,
		grocerylist.Melon_141.config,
		grocerylist.Melon_142.config,
		grocerylist.Melon_143.config,
		grocerylist.Melon_144.config,
		grocerylist.Melon_145.config,
		grocerylist.Melon_146.config,
		grocerylist.Melon_147.config,
		grocerylist.Melon_148.config,
		grocerylist.Melon_149.config,
		grocerylist.Melon_150.config,

	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
