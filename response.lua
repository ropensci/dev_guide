local function endTypstBlock(blocks)
  local lastBlock = blocks[#blocks]
  if lastBlock.t == "Para" or lastBlock.t == "Plain" then
    lastBlock.content:insert(pandoc.RawInline('typst', '\n]'))
    return blocks
  else
    blocks:insert(pandoc.RawBlock('typst', ']\n'))
    return blocks
  end
end

function Div(el)
  if el.classes:includes('summaryblock') then
    local blocks = pandoc.List({
      pandoc.RawBlock('typst', '#summaryblock[')
    })
    blocks:extend(el.content)
    return endTypstBlock(blocks)
  end
end