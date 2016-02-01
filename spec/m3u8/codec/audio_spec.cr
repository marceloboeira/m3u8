require "./../../spec_helper"

describe M3U8::Codec::Audio do
  context "when generating hls code from codec name" do
    context "generates from" do
      it "aac-lc" do
        codec = M3U8::Codec::Audio.new("aac-lc")

        expect(codec.to_hls).to eq("mp4a.40.2")
      end

      it "he-aac" do
        codec = M3U8::Codec::Audio.new("he-aac")

        expect(codec.to_hls).to eq("mp4a.40.5")
      end

      it "mp3" do
        codec = M3U8::Codec::Audio.new("mp3")

        expect(codec.to_hls).to eq("mp4a.40.34")
      end
    end
  end
end
