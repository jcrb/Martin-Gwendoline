# fait test de fisher sur les questions Q1 à Q9
qs <- function(d){
    q1 = 5
    q2 = 13
    for(i in q1:q2){
        print()
        print(paste0("Question Q", i-2))
        print("---------------------")
        t <- table(d$TEST, d[, i])
        print(t)
        f <- fisher.test(t)
        print(paste0(f$method, " = ", round(f$estimate, 3), " IC = ", round(f$conf.int[1], 3), " - ",round(f$conf.int[2], 3), " (p = ", round(f$p.value, 4), ")"))
    }
}