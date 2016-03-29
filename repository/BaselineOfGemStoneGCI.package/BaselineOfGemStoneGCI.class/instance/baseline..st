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
        configuration: 'FFI'
          with: [ 
              spec
                versionString: #'stable';
                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
        yourself.
      spec
        package: 'GemStone-GCI-Core'
          with: [ 
              spec
                requires: #('FFI' 'Ston');
                postLoadDoIt: #'initGci32xErrSType' ];
        package: 'GemStone-GCI-Tests'
          with: [ spec requires: 'GemStone-GCI-Core' ];
        package: 'GemStone-GCI-ThreadSafe-Core'
          with: [ spec requires: 'GemStone-GCI-Core' ];
        package: 'GemStone-GCI-ThreadSafe-Tests'
          with: [ spec requires: 'GemStone-GCI-ThreadSafe-Core' ];     
        yourself.
      spec
        group: 'default' with: #('Core' 'Tests');
        group: 'Core' with: #('GemStone-GCI-Core'  'GemStone-GCI-ThreadSafe-Core');
        group: 'Tests' with: #( 'GemStone-GCI-Tests' 'GemStone-GCI-ThreadSafe-Tests');
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