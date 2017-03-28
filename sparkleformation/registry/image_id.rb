SfnRegistry.register(:image_id) do
  default 'ami-0b33d91d'
  allowed_values ['ami-0b33d91d', 'ami-f4cc1de2']
  description 'Image id'
  type 'String'
end