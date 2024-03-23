def parse_invoices(invoice_data)
  pattern = /^(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$\d+)$/
  invoice_data.each_line do |line|
    match_data = line.match(pattern)
    if match_data
      date, invoice_number, client_name, amount = match_data.captures
      puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: #{amount}"
    end
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - BassPro Corp - $2000
2023-03-02 - INV002 - Deer_Hunters LLC - $3050
2023-03-03 - INV003 - County_Boy Inc - $4500
INVOICES

parse_invoices(invoice_entries)
