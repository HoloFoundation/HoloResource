# perform after install
support_path='Pods/Target Support Files'
xcconfigs=$(cd "$support_path"; ls */*.xcconfig)
for file in $xcconfigs; do
	if [[ $file != Pod* ]]; then
		pod_name=${file%/*}
		xcconfig=$support_path/$file
		target_line=$(sed -n '/GCC_PREPROCESSOR_DEFINITIONS/p' "$xcconfig")
		if [[ $target_line != *$pod_name* ]]; then
			holo_pod_name=" HOLO_POD_NAME=@(\\\\\"$pod_name\\\\\")"
			sed -i "" "s/$target_line/$target_line$holo_pod_name/" "$xcconfig"
		fi
	fi
done
