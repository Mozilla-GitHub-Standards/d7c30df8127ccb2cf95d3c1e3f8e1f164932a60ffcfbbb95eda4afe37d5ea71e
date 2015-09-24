rm -r multiple-addon-example
mkdir multiple-addon-example
for i in $(seq 1 10)
do
  cp -r certified-app-example multiple-addon-example/addon-$i
  sed -i "s/Certified App Inject/Test Addon $i/g" multiple-addon-example/addon-$i/*.json
  sed -i "s/Certified App Inject/Test Addon $i/g" multiple-addon-example/addon-$i/*.webapp
  sed -i "s/ADDON_ID/$i/g" multiple-addon-example/addon-$i/*.js
done