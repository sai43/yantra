# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end


  def extension_white_list
    %w(jpg jpeg gif png)
  end

  version :large do
    process :eager => true
    process :resize_to_fill => [500, 500, :north]
  end

  version :medium do
    process :eager => true
    process :resize_to_fill => [250, 250, :north]
  end

  version :thumb do
    process :eager => true
    process :resize_to_fit => [70, 70]
  end


end
