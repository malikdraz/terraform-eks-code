cur=`pwd`
date
dirs="sampleapp cicd nodeg cluster c9net iam net tf-setup"
for i in $dirs; do
cd ../$i
echo "**** Destroying in $i ****"
terraform destroy -auto-approve
rm -rf .terraform
cd $cur
date
done
exit