aws cloudformation validate-template \
--template-body file:///Users/Robert-Jan/Desktop/offcourse-frontend-cf/template.json \
--parameter ParameterKey="Stage",ParameterValue="production" \
--parameter ParameterKey="HostedZone",ParameterValue="offcourse.io"