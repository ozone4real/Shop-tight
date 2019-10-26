module Types
  class ImageUrl < BaseScalar
    description "A valid URL, transported as a string"
    class << self
      def coerce_input(files, context)
        files&.map {|file| create_upload_file(file)}
      end

      def create_upload_file(file)
        ActionDispatch::Http::UploadedFile.new(
          filename: file.original_filename,
          type: file.content_type,
          head: file.headers,
          tempfile: file.tempfile
        )
      end
    end
  end
end