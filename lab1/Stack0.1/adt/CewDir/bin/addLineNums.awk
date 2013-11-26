{
    if (match($0, "cew_Ncase\\("))
        { sub("cew_Ncase\\(", "cew_Ncase(" NR ","); }
    print $0;
}
