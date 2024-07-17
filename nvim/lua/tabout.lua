local function node_at_cursor()
  local cursor = vim.api.nvim_win_get_cursor(0)
  return vim.treesitter.get_node({ 0, { cursor[1], cursor[2] } })
end

local tabout_types = {
  table_constructor = true,
  parameters = true,
  arguments = true,
  variable_list = true,
  block = true,

  -- lua
  bracket_index_expression = true,

  -- go
  parameter_list = true,
  literal_value = true,
  argument_list = true,

  slice_type = true,
  map_type = true,

  index_expression = true,

  string = true,
  interpreted_string_literal = true,
  rune_literal = true,
}

local list_type = {
  -- go
  source_file = true, -- root name
  parameter_list = true,
  literal_value = true,
  argument_list = true,

  -- lua
  chunk = true, -- root name
  table_constructor = true,
  parameters = true,
  arguments = true,
  variable_list = true,
  block = true,
}

local function ahead_of_cursor(node, cursor)
  local row_end, col_end = node:end_()

  if row_end < cursor[1] - 1 then
    return false
  end

  if col_end > cursor[2] then
    return true
  end

  if row_end > cursor[1] - 1 then
    return true
  end

  return false
end

local function tab_out_container()
  local current_node = node_at_cursor()

  while tabout_types[current_node:type()] == nil do
    next_node = current_node:parent()

    if next_node == nil then
      break
    end

    current_node = next_node
  end

  if list_type[current_node:type()] ~= nil then
    local cursor = vim.api.nvim_win_get_cursor(0)
    child_node = current_node:child(0)

    while child_node ~= nil and not ahead_of_cursor(child_node, cursor) do
      child_node = child_node:next_named_sibling()
    end

    if child_node ~= nil then
      current_node = child_node
    end
  end

  local row_end, col_end = current_node:end_()

  if row_end >= vim.api.nvim_buf_line_count(0) then
    return
  end

  vim.api.nvim_win_set_cursor(0, { row_end + 1, col_end })
end

vim.keymap.set("i", "<Tab>", tab_out_container)
