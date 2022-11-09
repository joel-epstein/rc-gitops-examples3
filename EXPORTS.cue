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

//    grocerylist["Fig_\(i)"].config

// }]

grocerylist_config:
	list.Concat([
		grocerylist.Fig_1.config,
		grocerylist.Fig_2.config,
		grocerylist.Fig_3.config,
		grocerylist.Fig_4.config,
		grocerylist.Fig_5.config,
		grocerylist.Fig_6.config,
		grocerylist.Fig_7.config,
		grocerylist.Fig_8.config,
		grocerylist.Fig_9.config,
		grocerylist.Fig_10.config,
		grocerylist.Fig_11.config,
		grocerylist.Fig_12.config,
		grocerylist.Fig_13.config,
		grocerylist.Fig_14.config,
		grocerylist.Fig_15.config,
		grocerylist.Fig_16.config,
		grocerylist.Fig_17.config,
		grocerylist.Fig_18.config,
		grocerylist.Fig_19.config,
		grocerylist.Fig_20.config,
		grocerylist.Fig_21.config,
		grocerylist.Fig_22.config,
		grocerylist.Fig_23.config,
		grocerylist.Fig_24.config,
		grocerylist.Fig_25.config,
		grocerylist.Fig_26.config,
		grocerylist.Fig_27.config,
		grocerylist.Fig_28.config,
		grocerylist.Fig_29.config,
		grocerylist.Fig_30.config,
		grocerylist.Fig_31.config,
		grocerylist.Fig_32.config,
		grocerylist.Fig_33.config,
		grocerylist.Fig_34.config,
		grocerylist.Fig_35.config,
		grocerylist.Fig_36.config,
		grocerylist.Fig_37.config,
		grocerylist.Fig_38.config,
		grocerylist.Fig_39.config,
		grocerylist.Fig_40.config,
		grocerylist.Fig_41.config,
		grocerylist.Fig_42.config,
		grocerylist.Fig_43.config,
		grocerylist.Fig_44.config,
		grocerylist.Fig_45.config,
		grocerylist.Fig_46.config,
		grocerylist.Fig_47.config,
		grocerylist.Fig_48.config,
		grocerylist.Fig_49.config,
		grocerylist.Fig_50.config,
		grocerylist.Fig_51.config,
		grocerylist.Fig_52.config,
		grocerylist.Fig_53.config,
		grocerylist.Fig_54.config,
		grocerylist.Fig_55.config,
		grocerylist.Fig_56.config,
		grocerylist.Fig_57.config,
		grocerylist.Fig_58.config,
		grocerylist.Fig_59.config,
		grocerylist.Fig_60.config,
		grocerylist.Fig_61.config,
		grocerylist.Fig_62.config,
		grocerylist.Fig_63.config,
		grocerylist.Fig_64.config,
		grocerylist.Fig_65.config,
		grocerylist.Fig_66.config,
		grocerylist.Fig_67.config,
		grocerylist.Fig_68.config,
		grocerylist.Fig_69.config,
		grocerylist.Fig_70.config,
		grocerylist.Fig_71.config,
		grocerylist.Fig_72.config,
		grocerylist.Fig_73.config,
		grocerylist.Fig_74.config,
		grocerylist.Fig_75.config,
		grocerylist.Fig_76.config,
		grocerylist.Fig_77.config,
		grocerylist.Fig_78.config,
		grocerylist.Fig_79.config,
		grocerylist.Fig_80.config,
		grocerylist.Fig_81.config,
		grocerylist.Fig_82.config,
		grocerylist.Fig_83.config,
		grocerylist.Fig_84.config,
		grocerylist.Fig_85.config,
		grocerylist.Fig_86.config,
		grocerylist.Fig_87.config,
		grocerylist.Fig_88.config,
		grocerylist.Fig_89.config,
		grocerylist.Fig_90.config,
		grocerylist.Fig_91.config,
		grocerylist.Fig_92.config,
		grocerylist.Fig_93.config,
		grocerylist.Fig_94.config,
		grocerylist.Fig_95.config,
		grocerylist.Fig_96.config,
		grocerylist.Fig_97.config,
		grocerylist.Fig_98.config,
		grocerylist.Fig_99.config,
		grocerylist.Fig_100.config,
		grocerylist.Fig_101.config,
		grocerylist.Fig_102.config,
		grocerylist.Fig_103.config,
		grocerylist.Fig_104.config,
		grocerylist.Fig_105.config,
		grocerylist.Fig_106.config,
		grocerylist.Fig_107.config,
		grocerylist.Fig_108.config,
		grocerylist.Fig_109.config,
		grocerylist.Fig_110.config,
		grocerylist.Fig_111.config,
		grocerylist.Fig_112.config,
		grocerylist.Fig_113.config,
		grocerylist.Fig_114.config,
		grocerylist.Fig_115.config,
		grocerylist.Fig_116.config,
		grocerylist.Fig_117.config,
		grocerylist.Fig_118.config,
		grocerylist.Fig_119.config,
		grocerylist.Fig_120.config,
		grocerylist.Fig_121.config,
		grocerylist.Fig_122.config,
		grocerylist.Fig_123.config,
		grocerylist.Fig_124.config,
		grocerylist.Fig_125.config,
		grocerylist.Fig_126.config,
		grocerylist.Fig_127.config,
		grocerylist.Fig_128.config,
		grocerylist.Fig_129.config,
		grocerylist.Fig_130.config,
		grocerylist.Fig_131.config,
		grocerylist.Fig_132.config,
		grocerylist.Fig_133.config,
		grocerylist.Fig_134.config,
		grocerylist.Fig_135.config,
		grocerylist.Fig_136.config,
		grocerylist.Fig_137.config,
		grocerylist.Fig_138.config,
		grocerylist.Fig_139.config,
		grocerylist.Fig_140.config,
		grocerylist.Fig_141.config,
		grocerylist.Fig_142.config,
		grocerylist.Fig_143.config,
		grocerylist.Fig_144.config,
		grocerylist.Fig_145.config,
		grocerylist.Fig_146.config,
		grocerylist.Fig_147.config,
		grocerylist.Fig_148.config,
		grocerylist.Fig_149.config,
		grocerylist.Fig_150.config,
	])	

core_config:
    core.Edge.config

configs:
	// The edge config must come first because services create routes
	// that reference the edge domain.
	core_config + list.FlattenN(grocerylist_config,1)
