family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
immediate_family = family.select{|relation, member| relation == :sisters || relation == :brothers}

array_immediate_family = immediate_family.values.flatten
p array_immediate_family
