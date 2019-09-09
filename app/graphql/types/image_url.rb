module Types
  class ImageUrl < BaseScalar
    description "A valid URL, transported as a string"
    def self.coerce_input(file, context)
      return nil if file.nil?
      ActionDispatch::Http::UploadedFile.new(
        filename: file.original_filename,
        type: file.content_type,
        head: file.headers,
        tempfile: file.tempfile
      )
    end
  end
end