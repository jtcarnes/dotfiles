let current_hooks = $env.config.hooks
let hooks = {
    pre_prompt: [{ ||
      let direnv = (direnv export json | from json)
      let direnv = if ($direnv | length) == 1 { $direnv } else { {} }
      $direnv | load-env
    }]
  }

let merged_hooks = ($hooks | merge ($current_hooks))
$env.config = ($env.config | upsert hooks $merged_hooks)
