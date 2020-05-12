
# perform the method in Podfile
def holo_config_pod_name
    # or copy these code to Podfile
    post_install do |installer|
      installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
          config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] = "'HOLO_POD_NAME=@(\"#{target}\")'"
        end
      end
    end
end
