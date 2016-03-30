baseline
baseline: spec
  <baseline>
  spec
    for: #'pharo'
    do: [ 
      spec
        baseline: 'Ston'
          with: [ 
              spec
                loads: 'Core';
                repository: 'github://GsDevKit/ston:v0.9.4/repository' ];
        yourself.
      spec
        package: 'GemStone-GCI-Core'
          with: [ 
              spec
                requires: #('FFI' 'Ston');
                postLoadDoIt: #'initGci32xErrSType' ];
        package: 'GemStone-GCI-Tests'
          with: [ spec requires: 'GemStone-GCI-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Tests');
        group: 'Core' with: #('GemStone-GCI-Core');
        group: 'Tests' with: #( 'GemStone-GCI-Tests');
        yourself ].
  spec
    for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x')
    do: [ 
      spec
        package: 'GemStone-GCI-Server-Tests';
        yourself.
      spec
        group: 'default' with: #('Tests');
        group: 'Tests'
          with: #( 'GemStone-GCI-Server-Tests');
        yourself ]