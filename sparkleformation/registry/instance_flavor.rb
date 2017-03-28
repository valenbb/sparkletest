SfnRegistry.register(:instance_flavor) do
  allowed_values [
    't2.micro',
	  't2.small'
  ]
  default 'm1.small'
  description 'Size of created instance'
  type 'String'
end