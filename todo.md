split sentence by ? but keep ?
convert open books e.g. bookdown (pebesma, luc anselin) books to pres
tables: create empty tabs/i.txt files for tables and cut/paste table text to them
https://www.slidespilot.com/features/books-to-ppt
https://tex.stackexchange.com/questions/199654/convert-latex-book-to-presentation-and-handouts
first convert a book txt to tex and then to beamer (split sentences to li items)

https://www.slidespilot.com/features/textbooks-to-ppt
- awk to tabularize tables
- وقتی که یک لیست بین دو پارا قرار دارد یک اسلاید درست شود. پارای بعد از لیست جدا می‌شود
text
- li
- li
text

- یک رابط را اتوماتیک بین $$ قرار دهد
$$ eqn (2.3) $$
- بین رابط و شماره آن \quad بگذارد
eqn \quad (2.3)

# done
- rm header/footer; csplit rm header; bolstand didn't have footer; rm chapter title manually
- auto detect section header based on length after joining and prefix % or don't at all
- auto detect paras and insert \n between
