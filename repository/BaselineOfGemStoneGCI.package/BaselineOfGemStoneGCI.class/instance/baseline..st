baseline
baseline: spec
	<baseline>
	spec
		for: #(#pharo)
		do: [ 
			spec
				baseline: 'Ston'
					with: [ 
							spec
								loads: 'Core';
								repository: 'github://GsDevKit/ston:v0.9.4/repository' ];
				yourself.
			spec
				package: 'GemStone-GCI-Core' with: [ spec requires: #('Ston') ];
				package: 'GemStone-GCI-Tests' with: [ spec requires: 'GemStone-GCI-Core' ];
				yourself.
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('GemStone-GCI-Core');
				group: 'Tests' with: #('GemStone-GCI-Tests');
				yourself ].
	spec
		for: #(#'pharo3.x' #'pharo4.x')
		do: [ 
			spec
				configuration: 'FFI'
					with: [ 
							spec
								versionString: #stable;
								repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				yourself.
			spec
				package: 'GemStone-GCI-Pharo3x-Core';
				package: 'GemStone-GCI-Core'
					with: [ 
							spec
								requires: #('FFI');
								includes: #('GemStone-GCI-Pharo3x-Core');
								postLoadDoIt: #initGci32xErrSType ];
				yourself ].
	spec
		for: #(#'pharo5.x')
		do: [ 
			spec
				package: 'GemStone-GCI-Pharo5x-Core';
				package: 'GemStone-GCI-Core' with: [ spec includes: #('GemStone-GCI-Pharo5x-Core') ];
				yourself ].
	spec
		for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x')
		do: [ 
			spec
				package: 'GemStone-GCI-Server-Tests';
				yourself.
			spec
				group: 'default' with: #('Tests');
				group: 'Tests' with: #('GemStone-GCI-Server-Tests');
				yourself ]