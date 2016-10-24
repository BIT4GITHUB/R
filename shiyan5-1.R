x <-"dmvsynutdnubdtminutwdmtynuwmltosnojstnrmyminutynumatsqynumqsbnlscmlynudsmqtdsvnfcsrmyflbdswmrmbqsmtkmlnqrdsqsmjjywfjjiskfrrsewdmtsjrsentdsyrmynlsnatdsrtqmlbsrtodslnkslmnajfasfrtnslbmbsflmwnqhtdmtwfjjjmrtjnlbmatsqesmtdfrlnttdmtmjntjfhsflvsrtflbmjjynuqknlsyrntdmtautuqsbslsqmtfnlrcmlimqsfltsqsrtnlftosqdmorystfaynujnnhessoflynuqnwldsmqtynuwfjjaflernkstdflbeqfvsrynutnkmhstdfrhflenacnltqfiutfnlrnkstdflbeqfvsrsvsqydukmlisflbtnaflemouqonrstdmtjfvsrnlmatsqesmtdenynudnostnksknqfmjfzsynuqlmksdmvsmlmkstdmtfrwdfrosqsewftdqsvsqsltmwsenynudnostndmvsynuqamcscmqvseuonlnabqmlftsqnchfrtdsmlrwsqqsmjjytdmtrfkojsfrtdsouqonrsnajfastfkscnltqfiutfnlmlsbneqfvslesrfqsanqmknqtmjisflbtndmvsmlfkknqtmjlmksnqfrftrnkstdflbknqsmcdfjemjfvstnemywfjjefstnknqqnwmimiytdmtdmetdsontsltfmjtnistdslsxtsflrtsflwfjjefsaqnkcnkojfcmtfnlfrmtifqtdtdscfqcukrtmlcsrnajfasmqslntrstflrtnlswsmqslntmjjksmlttnjfvsjfastdqnubdtnnjembswsdmvsbqnwltnosqcsfvsjfasmrmaujjcycjswftdmcsqtmfllukisqnaysmqrflistwsslfamjjnatdnrsysmqrmqslntjfvsenutftfrmtqmbseymtqmbseyiscmursmdukmlo"
library(stringr)
g <-str_count(x,c('a','b','c','d','e',
                  'f','g','h','i','j','k','l','m','n',
                  'o','p','q','r','s','t','u','v','w','x',
                  'y','z'))
k <-g/str_length(x)
k <-c(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,z)
l <-1:26
barplot(k)
barplot(g,xlim = c(1,26),width = .8)
array(g,c(1,26))
