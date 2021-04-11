Pod::Spec.new do |s|  
    s.name              = 'GeoQSDK'
    s.version           = '2.0.0'
    s.summary           = 'GeoQ iOS framework'
    s.homepage          = 'https://geoq.es/'

    s.author            = { 'Name' => 'GeoQ' }
    s.license           = { :type => 'Custom', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => 'https://github.com/Cristaliza/GeoQSDK/releases/download/2.0.0/GeoQSDK.framework.zip' }

    s.ios.deployment_target = '9.0'
    s.ios.vendored_frameworks = 'GeoQSDK.framework'
end
