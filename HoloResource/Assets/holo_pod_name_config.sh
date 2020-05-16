#!/bin/sh

# perform after install
support_path='Pods/Target Support Files'

config_with_name_file() {
    pod_name=$1
    xcconfig=$2
    if [ -f "$xcconfig" ]; then
        target_line=$(sed -n '/GCC_PREPROCESSOR_DEFINITIONS/p' "$xcconfig")
        if [[ $target_line != *$pod_name* ]]; then
            holo_pod_name=" HOLO_POD_NAME=@(\\\\\"$pod_name\\\\\")"
            sed -i "" "s/$target_line/$target_line$holo_pod_name/" "$xcconfig"
        fi
    fi
}

config_with_name() {
    pod_name=$1
    debug_xcconfig="$support_path/$pod_name/$pod_name.debug.xcconfig"
    release_xcconfig="$support_path/$pod_name/$pod_name.release.xcconfig"
    config_with_name_file $pod_name "$debug_xcconfig"
    config_with_name_file $pod_name "$release_xcconfig"
}

if [ $# -ge 1 ];then
    for arg in $*; do
        pod_name=$arg
       config_with_name $pod_name
    done
    config_with_name HoloResource
else
    xcconfigs=$(cd "$support_path"; ls */*.*.xcconfig)
    for file in $xcconfigs; do
        if [[ $file != Pods-* ]]; then
            pod_name=${file%/*}
            config_with_name $pod_name
#            xcconfig=$support_path/$file
#            config_with_name_file $pod_name "$xcconfig"
        fi
    done
fi
