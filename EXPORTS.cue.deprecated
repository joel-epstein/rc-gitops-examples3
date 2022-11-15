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

//    grocerylist["Orange_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Orange_1.config,
		grocerylist.Orange_2.config,
		grocerylist.Orange_3.config,
		grocerylist.Orange_4.config,
		grocerylist.Orange_5.config,
		grocerylist.Orange_6.config,
		grocerylist.Orange_7.config,
		grocerylist.Orange_8.config,
		grocerylist.Orange_9.config,
		grocerylist.Orange_10.config,
		grocerylist.Orange_11.config,
		grocerylist.Orange_12.config,
		grocerylist.Orange_13.config,
		grocerylist.Orange_14.config,
		grocerylist.Orange_15.config,
		grocerylist.Orange_16.config,
		grocerylist.Orange_17.config,
		grocerylist.Orange_18.config,
		grocerylist.Orange_19.config,
		grocerylist.Orange_20.config,
		grocerylist.Orange_21.config,
		grocerylist.Orange_22.config,
		grocerylist.Orange_23.config,
		grocerylist.Orange_24.config,
		grocerylist.Orange_25.config,
		grocerylist.Orange_26.config,
		grocerylist.Orange_27.config,
		grocerylist.Orange_28.config,
		grocerylist.Orange_29.config,
		grocerylist.Orange_30.config,
		grocerylist.Orange_31.config,
		grocerylist.Orange_32.config,
		grocerylist.Orange_33.config,
		grocerylist.Orange_34.config,
		grocerylist.Orange_35.config,
		grocerylist.Orange_36.config,
		grocerylist.Orange_37.config,
		grocerylist.Orange_38.config,
		grocerylist.Orange_39.config,
		grocerylist.Orange_40.config,
		grocerylist.Orange_41.config,
		grocerylist.Orange_42.config,
		grocerylist.Orange_43.config,
		grocerylist.Orange_44.config,
		grocerylist.Orange_45.config,
		grocerylist.Orange_46.config,
		grocerylist.Orange_47.config,
		grocerylist.Orange_48.config,
		grocerylist.Orange_49.config,
		grocerylist.Orange_50.config,
		grocerylist.Orange_51.config,
		grocerylist.Orange_52.config,
		grocerylist.Orange_53.config,
		grocerylist.Orange_54.config,
		grocerylist.Orange_55.config,
		grocerylist.Orange_56.config,
		grocerylist.Orange_57.config,
		grocerylist.Orange_58.config,
		grocerylist.Orange_59.config,
		grocerylist.Orange_60.config,
		grocerylist.Orange_61.config,
		grocerylist.Orange_62.config,
		grocerylist.Orange_63.config,
		grocerylist.Orange_64.config,
		grocerylist.Orange_65.config,
		grocerylist.Orange_66.config,
		grocerylist.Orange_67.config,
		grocerylist.Orange_68.config,
		grocerylist.Orange_69.config,
		grocerylist.Orange_70.config,
		grocerylist.Orange_71.config,
		grocerylist.Orange_72.config,
		grocerylist.Orange_73.config,
		grocerylist.Orange_74.config,
		grocerylist.Orange_75.config,
		grocerylist.Orange_76.config,
		grocerylist.Orange_77.config,
		grocerylist.Orange_78.config,
		grocerylist.Orange_79.config,
		grocerylist.Orange_80.config,
		grocerylist.Orange_81.config,
		grocerylist.Orange_82.config,
		grocerylist.Orange_83.config,
		grocerylist.Orange_84.config,
		grocerylist.Orange_85.config,
		grocerylist.Orange_86.config,
		grocerylist.Orange_87.config,
		grocerylist.Orange_88.config,
		grocerylist.Orange_89.config,
		grocerylist.Orange_90.config,
		grocerylist.Orange_91.config,
		grocerylist.Orange_92.config,
		grocerylist.Orange_93.config,
		grocerylist.Orange_94.config,
		grocerylist.Orange_95.config,
		grocerylist.Orange_96.config,
		grocerylist.Orange_97.config,
		grocerylist.Orange_98.config,
		grocerylist.Orange_99.config,
		grocerylist.Orange_100.config,
		grocerylist.Orange_101.config,
		grocerylist.Orange_102.config,
		grocerylist.Orange_103.config,
		grocerylist.Orange_104.config,
		grocerylist.Orange_105.config,
		grocerylist.Orange_106.config,
		grocerylist.Orange_107.config,
		grocerylist.Orange_108.config,
		grocerylist.Orange_109.config,
		grocerylist.Orange_110.config,
		grocerylist.Orange_111.config,
		grocerylist.Orange_112.config,
		grocerylist.Orange_113.config,
		grocerylist.Orange_114.config,
		grocerylist.Orange_115.config,
		grocerylist.Orange_116.config,
		grocerylist.Orange_117.config,
		grocerylist.Orange_118.config,
		grocerylist.Orange_119.config,
		grocerylist.Orange_120.config,
		grocerylist.Orange_121.config,
		grocerylist.Orange_122.config,
		grocerylist.Orange_123.config,
		grocerylist.Orange_124.config,
		grocerylist.Orange_125.config,
		grocerylist.Orange_126.config,
		grocerylist.Orange_127.config,
		grocerylist.Orange_128.config,
		grocerylist.Orange_129.config,
		grocerylist.Orange_130.config,
		grocerylist.Orange_131.config,
		grocerylist.Orange_132.config,
		grocerylist.Orange_133.config,
		grocerylist.Orange_134.config,
		grocerylist.Orange_135.config,
		grocerylist.Orange_136.config,
		grocerylist.Orange_137.config,
		grocerylist.Orange_138.config,
		grocerylist.Orange_139.config,
		grocerylist.Orange_140.config,
		grocerylist.Orange_141.config,
		grocerylist.Orange_142.config,
		grocerylist.Orange_143.config,
		grocerylist.Orange_144.config,
		grocerylist.Orange_145.config,
		grocerylist.Orange_146.config,
		grocerylist.Orange_147.config,
		grocerylist.Orange_148.config,
		grocerylist.Orange_149.config,
		grocerylist.Orange_150.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
