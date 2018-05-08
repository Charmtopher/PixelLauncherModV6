.class Landroid/support/v4/app/R;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fK:[I

.field private static final fL:Landroid/support/v4/app/ac;

.field private static final fM:Landroid/support/v4/app/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/R;->fK:[I

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/X;

    invoke-direct {v0}, Landroid/support/v4/app/X;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroid/support/v4/app/R;->fL:Landroid/support/v4/app/ac;

    .line 61
    invoke-static {}, Landroid/support/v4/app/R;->as()Landroid/support/v4/app/ac;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/R;->fM:Landroid/support/v4/app/ac;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static a(Landroid/support/v4/app/W;Landroid/util/SparseArray;I)Landroid/support/v4/app/W;
    .locals 0

    .line 1215
    if-nez p0, :cond_0

    .line 1216
    new-instance p0, Landroid/support/v4/app/W;

    invoke-direct {p0}, Landroid/support/v4/app/W;-><init>()V

    .line 1217
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1219
    :cond_0
    return-object p0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;
    .locals 2

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    if-eqz p0, :cond_2

    .line 425
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->G()Ljava/lang/Object;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->F()Ljava/lang/Object;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->J()Ljava/lang/Object;

    move-result-object p0

    .line 434
    if-eqz p0, :cond_2

    .line 435
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2
    if-eqz p1, :cond_5

    .line 439
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->E()Ljava/lang/Object;

    move-result-object p0

    .line 440
    if-eqz p0, :cond_3

    .line 441
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->H()Ljava/lang/Object;

    move-result-object p0

    .line 444
    if-eqz p0, :cond_4

    .line 445
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->I()Ljava/lang/Object;

    move-result-object p0

    .line 448
    if-eqz p0, :cond_5

    .line 449
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    .line 453
    return-object p1

    .line 456
    :cond_6
    sget-object p0, Landroid/support/v4/app/R;->fL:Landroid/support/v4/app/ac;

    if-eqz p0, :cond_7

    sget-object p0, Landroid/support/v4/app/R;->fL:Landroid/support/v4/app/ac;

    invoke-static {p0, v0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 457
    sget-object p0, Landroid/support/v4/app/R;->fL:Landroid/support/v4/app/ac;

    return-object p0

    .line 459
    :cond_7
    sget-object p0, Landroid/support/v4/app/R;->fM:Landroid/support/v4/app/ac;

    if-eqz p0, :cond_8

    sget-object p0, Landroid/support/v4/app/R;->fM:Landroid/support/v4/app/ac;

    invoke-static {p0, v0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 460
    sget-object p0, Landroid/support/v4/app/R;->fM:Landroid/support/v4/app/ac;

    return-object p0

    .line 462
    :cond_8
    sget-object p0, Landroid/support/v4/app/R;->fL:Landroid/support/v4/app/ac;

    if-nez p0, :cond_9

    sget-object p0, Landroid/support/v4/app/R;->fM:Landroid/support/v4/app/ac;

    if-nez p0, :cond_9

    .line 465
    return-object p1

    .line 463
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/c/a;
    .locals 9

    .line 161
    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    .line 162
    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_3

    .line 163
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 164
    invoke-virtual {v1, p0}, Landroid/support/v4/app/c;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 168
    iget-object v3, v1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, v1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 172
    if-eqz v2, :cond_0

    .line 173
    iget-object v2, v1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 174
    iget-object v1, v1, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    goto :goto_1

    .line 176
    :cond_0
    iget-object v2, v1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 177
    iget-object v1, v1, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    .line 179
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 180
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 181
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v6}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 183
    if-eqz v7, :cond_1

    .line 184
    invoke-virtual {v0, v5, v7}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 186
    :cond_1
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 191
    :cond_3
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;
    .locals 3

    .line 782
    invoke-virtual {p1}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 786
    :cond_0
    iget-object p2, p3, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    .line 787
    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    .line 788
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ac;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 792
    iget-object p0, p3, Landroid/support/v4/app/W;->gk:Landroid/support/v4/app/c;

    .line 793
    iget-boolean p3, p3, Landroid/support/v4/app/W;->gj:Z

    if-eqz p3, :cond_1

    .line 794
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->T()Landroid/support/v4/app/ax;

    move-result-object p2

    .line 795
    iget-object p0, p0, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->U()Landroid/support/v4/app/ax;

    move-result-object p2

    .line 798
    iget-object p0, p0, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 801
    :goto_0
    invoke-static {v0, p0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 802
    if-eqz p2, :cond_4

    .line 803
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 805
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 806
    invoke-virtual {v0, p3}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 807
    if-nez v1, :cond_2

    .line 808
    invoke-virtual {p1, p3}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 809
    :cond_2
    invoke-static {v1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 810
    invoke-virtual {p1, p3}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 811
    invoke-static {v1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_3
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 815
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 817
    :cond_5
    return-object v0

    .line 783
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/support/v4/c/a;->clear()V

    .line 784
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/c/a;Landroid/support/v4/app/W;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 909
    iget-object p1, p1, Landroid/support/v4/app/W;->gh:Landroid/support/v4/app/c;

    .line 910
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 913
    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    .line 915
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 916
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 918
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 491
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 494
    :cond_0
    if-eqz p3, :cond_1

    .line 495
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->J()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->I()Ljava/lang/Object;

    move-result-object p1

    .line 494
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ac;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 497
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ac;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 492
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 505
    if-nez p1, :cond_0

    .line 506
    const/4 p0, 0x0

    return-object p0

    .line 508
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->H()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->E()Ljava/lang/Object;

    move-result-object p1

    .line 508
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ac;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ac;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .line 1035
    nop

    .line 1036
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    .line 1037
    if-eqz p5, :cond_2

    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-eqz p5, :cond_1

    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object p5, p5, Landroid/support/v4/app/k;->ea:Ljava/lang/Boolean;

    if-nez p5, :cond_0

    goto :goto_1

    :cond_0
    iget-object p4, p4, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object p4, p4, Landroid/support/v4/app/k;->ea:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 1046
    :goto_0
    move v0, p4

    goto :goto_2

    .line 1037
    :cond_1
    :goto_1
    goto :goto_2

    .line 1038
    :cond_2
    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    if-eqz p5, :cond_4

    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object p5, p5, Landroid/support/v4/app/k;->eb:Ljava/lang/Boolean;

    if-nez p5, :cond_3

    goto :goto_2

    :cond_3
    iget-object p4, p4, Landroid/support/v4/app/Fragment;->dH:Landroid/support/v4/app/k;

    iget-object p4, p4, Landroid/support/v4/app/k;->eb:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_0

    .line 1046
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1048
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    .line 1053
    :cond_5
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/ac;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1056
    :goto_3
    return-object p0
.end method

.method private static a(Landroid/support/v4/c/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 888
    invoke-virtual {p0}, Landroid/support/v4/c/a;->size()I

    move-result v0

    .line 889
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 890
    invoke-virtual {p0, v1}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    invoke-virtual {p0, v1}, Landroid/support/v4/c/a;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 889
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    .line 997
    nop

    .line 998
    if-eqz p1, :cond_2

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    iget-object p2, p2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1001
    if-eqz p2, :cond_0

    .line 1002
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/ac;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1004
    :cond_0
    if-eqz p3, :cond_1

    .line 1005
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1007
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1008
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1012
    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V
    .locals 2

    .line 975
    if-eqz p2, :cond_0

    .line 976
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->T()Landroid/support/v4/app/ax;

    move-result-object p0

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->T()Landroid/support/v4/app/ax;

    move-result-object p0

    .line 978
    :goto_0
    if-eqz p0, :cond_2

    .line 979
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 980
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 981
    const/4 p2, 0x0

    if-nez p3, :cond_1

    .line 982
    move v0, p2

    goto :goto_1

    .line 981
    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/c/a;->size()I

    move-result v0

    .line 982
    :goto_1
    if-ge p2, v0, :cond_2

    .line 983
    invoke-virtual {p3, p2}, Landroid/support/v4/c/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-virtual {p3, p2}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 986
    :cond_2
    return-void
.end method

.method private static a(Landroid/support/v4/app/ac;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/c/a;ZLandroid/support/v4/app/c;)V
    .locals 1

    .line 933
    iget-object v0, p5, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    .line 936
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    .line 937
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 938
    :goto_0
    invoke-virtual {p3, p4}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 939
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 941
    if-eqz p2, :cond_1

    .line 942
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 945
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/v4/app/c;Landroid/support/v4/app/d;Landroid/util/SparseArray;ZZ)V
    .locals 11

    .line 1118
    iget-object v6, p1, Landroid/support/v4/app/d;->cH:Landroid/support/v4/app/Fragment;

    .line 1119
    if-nez v6, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    iget v7, v6, Landroid/support/v4/app/Fragment;->dv:I

    .line 1123
    if-nez v7, :cond_1

    .line 1124
    return-void

    .line 1126
    :cond_1
    if-eqz p3, :cond_2

    sget-object v0, Landroid/support/v4/app/R;->fK:[I

    iget p1, p1, Landroid/support/v4/app/d;->cG:I

    aget p1, v0, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/support/v4/app/d;->cG:I

    .line 1127
    :goto_0
    nop

    .line 1128
    nop

    .line 1129
    nop

    .line 1130
    nop

    .line 1131
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    packed-switch p1, :pswitch_data_0

    .line 1169
    move p1, v0

    move v1, p1

    move v8, v1

    goto/16 :goto_b

    .line 1133
    :pswitch_0
    if-eqz p4, :cond_4

    .line 1134
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dJ:Z

    if-eqz p1, :cond_3

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez p1, :cond_3

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz p1, :cond_3

    .line 1138
    move p1, v1

    goto :goto_1

    .line 1134
    :cond_3
    nop

    .line 1138
    move p1, v0

    goto :goto_1

    .line 1136
    :cond_4
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dx:Z

    .line 1138
    :goto_1
    nop

    .line 1139
    goto/16 :goto_a

    .line 1150
    :pswitch_1
    if-eqz p4, :cond_6

    .line 1151
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dJ:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz p1, :cond_5

    .line 1155
    :goto_2
    move p1, v1

    goto :goto_4

    .line 1151
    :cond_5
    nop

    .line 1155
    :goto_3
    move p1, v0

    goto :goto_4

    .line 1153
    :cond_6
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    goto :goto_3

    .line 1155
    :goto_4
    nop

    .line 1156
    goto :goto_8

    .line 1159
    :pswitch_2
    if-eqz p4, :cond_9

    .line 1160
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->di:Z

    if-nez p1, :cond_8

    iget-object p1, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object p1, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1161
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v6, Landroid/support/v4/app/Fragment;->dK:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_8

    .line 1166
    :goto_5
    move p1, v1

    goto :goto_7

    .line 1161
    :cond_8
    nop

    .line 1166
    :goto_6
    move p1, v0

    goto :goto_7

    .line 1164
    :cond_9
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_6

    .line 1166
    :goto_7
    nop

    .line 1169
    :goto_8
    move v8, p1

    move p1, v1

    move v1, v0

    goto :goto_b

    .line 1142
    :cond_b
    :pswitch_3
    if-eqz p4, :cond_c

    .line 1143
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dI:Z

    goto :goto_9

    .line 1145
    :cond_c
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->di:Z

    if-nez p1, :cond_d

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez p1, :cond_d

    .line 1147
    move p1, v1

    goto :goto_9

    .line 1145
    :cond_d
    nop

    .line 1147
    move p1, v0

    .line 1148
    :goto_9
    nop

    .line 1169
    :goto_a
    move v8, v0

    move v0, p1

    move p1, v8

    :goto_b
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/W;

    .line 1170
    if-eqz v0, :cond_e

    .line 1171
    nop

    .line 1172
    invoke-static {v2, p2, v7}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/W;Landroid/util/SparseArray;I)Landroid/support/v4/app/W;

    move-result-object v2

    .line 1173
    iput-object v6, v2, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    .line 1174
    iput-boolean p3, v2, Landroid/support/v4/app/W;->gg:Z

    .line 1175
    iput-object p0, v2, Landroid/support/v4/app/W;->gh:Landroid/support/v4/app/c;

    .line 1177
    :cond_e
    move-object v9, v2

    const/4 v10, 0x0

    if-nez p4, :cond_10

    if-eqz v1, :cond_10

    .line 1178
    if-eqz v9, :cond_f

    iget-object v0, v9, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    if-ne v0, v6, :cond_f

    .line 1179
    iput-object v10, v9, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    .line 1186
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    .line 1187
    iget v1, v6, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v1, :cond_10

    iget v1, v0, Landroid/support/v4/app/v;->eG:I

    if-lez v1, :cond_10

    iget-boolean v1, p0, Landroid/support/v4/app/c;->cE:Z

    if-nez v1, :cond_10

    .line 1189
    invoke-virtual {v0, v6}, Landroid/support/v4/app/v;->g(Landroid/support/v4/app/Fragment;)V

    .line 1190
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1193
    :cond_10
    if-eqz v8, :cond_12

    if-eqz v9, :cond_11

    iget-object v0, v9, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_12

    .line 1194
    :cond_11
    nop

    .line 1195
    invoke-static {v9, p2, v7}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/W;Landroid/util/SparseArray;I)Landroid/support/v4/app/W;

    move-result-object v9

    .line 1196
    iput-object v6, v9, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    .line 1197
    iput-boolean p3, v9, Landroid/support/v4/app/W;->gj:Z

    .line 1198
    iput-object p0, v9, Landroid/support/v4/app/W;->gk:Landroid/support/v4/app/c;

    .line 1201
    :cond_12
    if-nez p4, :cond_13

    if-eqz p1, :cond_13

    if-eqz v9, :cond_13

    iget-object p0, v9, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    if-ne p0, v6, :cond_13

    .line 1203
    iput-object v10, v9, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    .line 1205
    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 4

    .line 1070
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1071
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1072
    iget-object v3, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    .line 1073
    invoke-static {p0, v3, p1, v1, p2}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/d;Landroid/util/SparseArray;ZZ)V

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method static a(Landroid/support/v4/app/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 105
    move/from16 v4, p5

    iget v5, v0, Landroid/support/v4/app/v;->eG:I

    if-gtz v5, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 111
    move/from16 v6, p3

    :goto_0
    if-ge v6, v3, :cond_2

    .line 112
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/c;

    .line 113
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 114
    if-eqz v8, :cond_1

    .line 115
    invoke-static {v7, v5, v4}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-static {v7, v5, v4}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    .line 111
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_20

    .line 122
    new-instance v6, Landroid/view/View;

    iget-object v7, v0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v7, v7, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 124
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_20

    .line 125
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 126
    move/from16 v12, p3

    invoke-static {v7, v1, v2, v12, v3}, Landroid/support/v4/app/R;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/c/a;

    move-result-object v11

    .line 129
    nop

    .line 130
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/support/v4/app/W;

    .line 132
    const/16 v20, 0x0

    if-eqz v4, :cond_12

    .line 133
    iget-object v8, v0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {v8}, Landroid/support/v4/app/r;->onHasView()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {v8, v7}, Landroid/support/v4/app/r;->onFindViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_3
    move-object/from16 v7, v20

    :goto_3
    if-eqz v7, :cond_10

    iget-object v8, v10, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    iget-object v9, v10, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    invoke-static {v9, v8}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    move-result-object v14

    if-eqz v14, :cond_10

    iget-boolean v1, v10, Landroid/support/v4/app/W;->gg:Z

    iget-boolean v2, v10, Landroid/support/v4/app/W;->gj:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v5

    invoke-static {v14, v8, v1}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v9, v2}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    iget-object v12, v10, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    move/from16 v30, v13

    iget-object v13, v10, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    if-eqz v12, :cond_4

    move/from16 v31, v15

    iget-object v15, v12, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    move/from16 v31, v15

    :goto_4
    if-eqz v12, :cond_d

    if-nez v13, :cond_5

    goto/16 :goto_8

    :cond_5
    iget-boolean v0, v10, Landroid/support/v4/app/W;->gg:Z

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v15, v20

    goto :goto_5

    :cond_6
    invoke-static {v14, v12, v13, v0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    :goto_5
    move/from16 v32, v1

    invoke-static {v14, v11, v15, v10}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;

    move-result-object v1

    move-object/from16 v33, v8

    invoke-static {v14, v11, v15, v10}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;

    move-result-object v8

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/support/v4/c/a;->clear()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/support/v4/c/a;->clear()V

    :cond_8
    move-object/from16 v15, v20

    goto :goto_6

    :cond_9
    move-object/from16 v34, v15

    invoke-virtual {v11}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-static {v4, v1, v15}, Landroid/support/v4/app/R;->a(Ljava/util/ArrayList;Landroid/support/v4/c/a;Ljava/util/Collection;)V

    invoke-virtual {v11}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-static {v3, v8, v15}, Landroid/support/v4/app/R;->a(Ljava/util/ArrayList;Landroid/support/v4/c/a;Ljava/util/Collection;)V

    move-object/from16 v15, v34

    :goto_6
    if-nez v5, :cond_a

    if-nez v2, :cond_a

    if-nez v15, :cond_a

    move-object/from16 v36, v3

    move-object/from16 v35, v11

    goto :goto_9

    :cond_a
    invoke-static {v12, v13, v0, v1}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    if-eqz v15, :cond_c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v15, v6, v4}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v35, v11

    iget-boolean v11, v10, Landroid/support/v4/app/W;->gj:Z

    move-object/from16 v36, v3

    iget-object v3, v10, Landroid/support/v4/app/W;->gk:Landroid/support/v4/app/c;

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move/from16 v25, v11

    move-object/from16 v26, v3

    invoke-static/range {v21 .. v26}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/c/a;ZLandroid/support/v4/app/c;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v8, v10, v5, v0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/c/a;Landroid/support/v4/app/W;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual {v14, v5, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_b
    move-object/from16 v28, v1

    move-object/from16 v26, v20

    goto :goto_7

    :cond_c
    move-object/from16 v36, v3

    move-object/from16 v35, v11

    move-object/from16 v26, v20

    move-object/from16 v28, v26

    :goto_7
    new-instance v1, Landroid/support/v4/app/U;

    move-object/from16 v21, v1

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v28}, Landroid/support/v4/app/U;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;Landroid/view/View;Landroid/support/v4/app/ac;Landroid/graphics/Rect;)V

    invoke-static {v7, v1}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    goto :goto_a

    :cond_d
    :goto_8
    move/from16 v32, v1

    move-object/from16 v36, v3

    move-object/from16 v33, v8

    move-object/from16 v35, v11

    :goto_9
    move-object/from16 v15, v20

    :goto_a
    if-nez v5, :cond_e

    if-nez v15, :cond_e

    if-eqz v2, :cond_11

    :cond_e
    invoke-static {v14, v2, v9, v4, v6}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v33

    move-object/from16 v3, v36

    invoke-static {v14, v5, v1, v3, v6}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v8, v10}, Landroid/support/v4/app/R;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v21, v14

    move-object/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v15

    move-object/from16 v25, v1

    move/from16 v26, v32

    invoke-static/range {v21 .. v26}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    if-eqz v9, :cond_f

    if-eqz v2, :cond_f

    iget-boolean v10, v9, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v9, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v9, Landroid/support/v4/app/Fragment;->dJ:Z

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->d(Z)V

    iget-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v2, v10, v0}, Landroid/support/v4/app/ac;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    new-instance v10, Landroid/support/v4/app/S;

    invoke-direct {v10, v0}, Landroid/support/v4/app/S;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v9, v10}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    :cond_f
    invoke-virtual {v14, v3}, Landroid/support/v4/app/ac;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v21, v14

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v2

    move-object/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, v3

    invoke-virtual/range {v21 .. v28}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v7, v1}, Landroid/support/v4/app/ac;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v21, v35

    invoke-virtual/range {v16 .. v21}, Landroid/support/v4/app/ac;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroid/support/v4/app/R;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v14, v15, v4, v3}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_11

    .line 124
    :cond_10
    move-object/from16 v29, v5

    move/from16 v30, v13

    move/from16 v31, v15

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 136
    :cond_12
    move-object/from16 v29, v5

    move-object/from16 v35, v11

    move/from16 v30, v13

    move/from16 v31, v15

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {v2}, Landroid/support/v4/app/r;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {v2, v7}, Landroid/support/v4/app/r;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_13
    move-object/from16 v2, v20

    :goto_b
    if-eqz v2, :cond_1e

    iget-object v3, v10, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    iget-object v4, v10, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    invoke-static {v4, v3}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    move-result-object v5

    if-eqz v5, :cond_1e

    iget-boolean v7, v10, Landroid/support/v4/app/W;->gg:Z

    iget-boolean v8, v10, Landroid/support/v4/app/W;->gj:Z

    invoke-static {v5, v3, v7}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v4, v8}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v10, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    iget-object v13, v10, Landroid/support/v4/app/W;->gi:Landroid/support/v4/app/Fragment;

    if-eqz v14, :cond_1a

    if-nez v13, :cond_14

    goto/16 :goto_f

    :cond_14
    iget-boolean v12, v10, Landroid/support/v4/app/W;->gg:Z

    move-object/from16 v11, v35

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_15

    move-object/from16 v0, v20

    goto :goto_c

    :cond_15
    invoke-static {v5, v14, v13, v12}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    :goto_c
    invoke-static {v5, v11, v0, v10}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;

    move-result-object v1

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_16

    move-object/from16 v0, v20

    goto :goto_d

    :cond_16
    move-object/from16 v37, v0

    invoke-virtual {v1}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v37

    :goto_d
    if-nez v9, :cond_17

    if-nez v8, :cond_17

    if-nez v0, :cond_17

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v45, v7

    move-object v1, v8

    move-object/from16 v43, v9

    move-object v0, v10

    move-object/from16 v42, v11

    move-object/from16 v44, v15

    move-object/from16 v17, v20

    move/from16 v22, v30

    move/from16 v21, v31

    const/16 v23, 0x0

    goto/16 :goto_10

    :cond_17
    invoke-static {v14, v13, v12, v1}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    if-eqz v0, :cond_18

    move-object/from16 v38, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v39, v7

    iget-boolean v7, v10, Landroid/support/v4/app/W;->gj:Z

    move-object/from16 v40, v4

    iget-object v4, v10, Landroid/support/v4/app/W;->gk:Landroid/support/v4/app/c;

    move-object/from16 v17, v11

    move-object v11, v5

    move/from16 v18, v12

    move-object v12, v0

    move-object/from16 v19, v13

    move-object v13, v8

    move-object/from16 v21, v14

    move-object v14, v1

    move-object v1, v15

    move v15, v7

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/c/a;ZLandroid/support/v4/app/c;)V

    if-eqz v9, :cond_19

    invoke-virtual {v5, v9, v3}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_e

    :cond_18
    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v39, v7

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move-object v1, v15

    move-object/from16 v3, v20

    :cond_19
    :goto_e
    new-instance v4, Landroid/support/v4/app/V;

    move-object/from16 v15, v39

    move-object v7, v4

    move-object v14, v8

    move-object v8, v5

    move-object v13, v9

    move-object/from16 v9, v17

    move-object v12, v10

    move-object v10, v0

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    move-object v11, v12

    move-object/from16 v42, v0

    move-object v0, v12

    move-object v12, v1

    move-object/from16 v43, v13

    move/from16 v22, v30

    move-object v13, v6

    move-object/from16 v44, v1

    move-object v1, v14

    const/16 v23, 0x0

    move-object/from16 v14, v21

    move-object/from16 v45, v15

    move/from16 v21, v31

    move-object/from16 v15, v19

    move/from16 v16, v18

    move-object/from16 v17, v45

    move-object/from16 v18, v43

    move-object/from16 v19, v3

    invoke-direct/range {v7 .. v19}, Landroid/support/v4/app/V;-><init>(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v2, v4}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    move-object/from16 v17, v41

    goto :goto_10

    :cond_1a
    :goto_f
    move/from16 v23, v0

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v45, v7

    move-object v1, v8

    move-object/from16 v43, v9

    move-object v0, v10

    move-object/from16 v44, v15

    move/from16 v22, v30

    move/from16 v21, v31

    move-object/from16 v42, v35

    move-object/from16 v17, v20

    :goto_10
    move-object/from16 v3, v43

    if-nez v3, :cond_1b

    if-nez v17, :cond_1b

    if-eqz v1, :cond_1f

    :cond_1b
    move-object/from16 v4, v40

    move-object/from16 v7, v45

    invoke-static {v5, v1, v4, v7, v6}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    move-object/from16 v1, v20

    :cond_1d
    invoke-virtual {v5, v3, v6}, Landroid/support/v4/app/ac;->b(Ljava/lang/Object;Landroid/view/View;)V

    iget-boolean v0, v0, Landroid/support/v4/app/W;->gg:Z

    move-object v11, v5

    move-object v12, v3

    move-object v13, v1

    move-object/from16 v14, v17

    move-object/from16 v15, v38

    move/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    move-object v12, v0

    move-object v13, v3

    move-object v14, v10

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v44

    invoke-virtual/range {v11 .. v18}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    new-instance v15, Landroid/support/v4/app/T;

    move-object v7, v15

    move-object v8, v3

    move-object v9, v5

    move-object v3, v10

    move-object v10, v6

    move-object/from16 v11, v38

    move-object/from16 v12, v44

    move-object v13, v3

    move-object v14, v4

    move-object v3, v15

    move-object v15, v1

    invoke-direct/range {v7 .. v15}, Landroid/support/v4/app/T;-><init>(Ljava/lang/Object;Landroid/support/v4/app/ac;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    new-instance v1, Landroid/support/v4/app/ae;

    move-object/from16 v3, v42

    move-object/from16 v4, v44

    invoke-direct {v1, v5, v4, v3}, Landroid/support/v4/app/ae;-><init>(Landroid/support/v4/app/ac;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v1}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    invoke-virtual {v5, v2, v0}, Landroid/support/v4/app/ac;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v4/app/af;

    invoke-direct {v0, v5, v4, v3}, Landroid/support/v4/app/af;-><init>(Landroid/support/v4/app/ac;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v0}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    goto :goto_12

    .line 124
    :cond_1e
    :goto_11
    move/from16 v23, v0

    move/from16 v22, v30

    move/from16 v21, v31

    :cond_1f
    :goto_12
    add-int/lit8 v13, v22, 0x1

    move/from16 v15, v21

    move-object/from16 v5, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    goto/16 :goto_2

    .line 141
    :cond_20
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1019
    if-nez p0, :cond_0

    .line 1020
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1023
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1024
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1026
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/support/v4/c/a;Ljava/util/Collection;)V
    .locals 3

    .line 646
    invoke-virtual {p1}, Landroid/support/v4/c/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 647
    invoke-virtual {p1, v0}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 648
    invoke-static {v1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/v4/app/ac;Ljava/util/List;)Z
    .locals 4

    .line 469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 470
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/ac;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    return v1

    .line 469
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static as()Landroid/support/v4/app/ac;
    .locals 3

    .line 66
    :try_start_0
    const-string v0, "android.support.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ac;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;
    .locals 3

    .line 837
    iget-object v0, p3, Landroid/support/v4/app/W;->gf:Landroid/support/v4/app/Fragment;

    .line 838
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 839
    invoke-virtual {p1}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz p2, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 843
    :cond_0
    new-instance p2, Landroid/support/v4/c/a;

    invoke-direct {p2}, Landroid/support/v4/c/a;-><init>()V

    .line 844
    invoke-virtual {p0, p2, v1}, Landroid/support/v4/app/ac;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 848
    iget-object p0, p3, Landroid/support/v4/app/W;->gh:Landroid/support/v4/app/c;

    .line 849
    iget-boolean p3, p3, Landroid/support/v4/app/W;->gg:Z

    if-eqz p3, :cond_1

    .line 850
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->U()Landroid/support/v4/app/ax;

    move-result-object p3

    .line 851
    iget-object p0, p0, Landroid/support/v4/app/c;->cC:Ljava/util/ArrayList;

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->T()Landroid/support/v4/app/ax;

    move-result-object p3

    .line 854
    iget-object p0, p0, Landroid/support/v4/app/c;->cD:Ljava/util/ArrayList;

    .line 857
    :goto_0
    if-eqz p0, :cond_2

    .line 858
    invoke-static {p2, p0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 859
    invoke-virtual {p1}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 861
    :cond_2
    if-eqz p3, :cond_6

    .line 862
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_8

    .line 864
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 865
    invoke-virtual {p2, v0}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 866
    if-nez v1, :cond_4

    .line 867
    invoke-static {p1, v0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/c/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_3

    .line 869
    invoke-virtual {p1, v0}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_3
    goto :goto_2

    :cond_4
    invoke-static {v1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 872
    invoke-static {p1, v0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/c/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_5

    .line 874
    invoke-static {v1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :cond_5
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 879
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/c/a;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_3
    if-ltz p0, :cond_8

    invoke-virtual {p1, p0}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/support/v4/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1, p0}, Landroid/support/v4/c/a;->removeAt(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    .line 881
    :cond_8
    return-object p2

    .line 840
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/support/v4/c/a;->clear()V

    .line 841
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/c/a;Landroid/support/v4/app/W;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/R;->a(Landroid/support/v4/c/a;Landroid/support/v4/app/W;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/ac;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 518
    if-nez p1, :cond_0

    .line 519
    const/4 p0, 0x0

    return-object p0

    .line 521
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->F()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->G()Ljava/lang/Object;

    move-result-object p1

    .line 521
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ac;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/ac;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    return-void
.end method

.method public static b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 3

    .line 1087
    iget-object v0, p0, Landroid/support/v4/app/c;->cm:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1091
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1092
    iget-object v2, p0, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    .line 1093
    invoke-static {p0, v2, p1, v1, p2}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/d;Landroid/util/SparseArray;ZZ)V

    .line 1091
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1095
    :cond_1
    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;I)V
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/support/v4/app/R;->a(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic c(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/ac;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/W;)Landroid/support/v4/c/a;

    move-result-object p0

    return-object p0
.end method
