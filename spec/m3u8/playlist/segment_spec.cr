require "./../../spec_helper"

describe M3U8::Playlist::Segment do
  it "accepts with url and duration" do
    segment = M3U8::Playlist::Segment.new("S01E01-1080-0001.ts", 9.003)

    output = "#EXTINF:9.003,\n" \
             "S01E01-1080-0001.ts\n"

    expect(segment.to_s).to match(/#{output}/)
  end

  it "accepts optional title" do
    segment = M3U8::Playlist::Segment.new("S01E02-1080-0002.ts", 9.009, "LOST - S01E02")

    output = "#EXTINF:9.009,LOST - S01E02\n" \
             "S01E02-1080-0002.ts\n"

    expect(segment.to_s).to match(/#{output}/)
  end
end