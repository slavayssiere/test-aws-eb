require 'aws-sdk'

config = Aws.config.update({
  region: 'eu-west-1',
  credentials: Aws::SharedCredentials.new()
})

# client constructors
ec2 = Aws::EC2::Client.new()

instances = ec2.describe_instances()
puts instances
