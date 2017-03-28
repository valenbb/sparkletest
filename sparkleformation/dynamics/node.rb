SparkleFormation.dynamic(:node) do |name, _config={}|

  parameters do
  
    registry!(:image_id, _name, _config)
	
	registry!(:keypair_name, _name, _config)
	
	registry!(:instance_flavor, _name, _config)
	
  end

  outputs.set!("#{name}_public_address".to_sym) do
    description "Compute instance public address - #{name}"
    value attr!("#{name}_ec2_instance".to_sym, :public_ip)
  end

  dynamic!(:ec2_instance, name) do
    properties do
      image_id ref!("#{name}_image_id".to_sym)
      instance_type ref!("#{name}_instance_flavor".to_sym)
      key_name ref!("#{name}_keypair_name".to_sym)
    end
  end

end