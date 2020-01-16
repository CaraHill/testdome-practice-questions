def group_by_owners(files)
  files.each_with_object({}) { |(k, v), o| (o[v] ||= []) << k }
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts group_by_owners(files)

# should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}
