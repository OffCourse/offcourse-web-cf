aws cloudformation update-stack \
--stack-name offcourse-frontend-production \
--template-body file:////home/yeehaa/Documents/offcourse-frontend-cf/template.json \
--parameter ParameterKey="Stage",ParameterValue="production"