.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/search/SearchAlgorithm;


# instance fields
.field private final mApps:Ljava/util/List;

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method public static matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z
    .locals 12

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 77
    iget-object p0, p0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 80
    const/4 v2, 0x0

    if-lt v1, v0, :cond_8

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 85
    :cond_0
    nop

    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    .line 88
    sub-int v4, v1, v0

    .line 89
    move v5, v2

    move v6, v3

    move v3, v5

    :goto_0
    if-gt v3, v4, :cond_7

    .line 90
    nop

    .line 91
    nop

    .line 92
    const/4 v7, 0x1

    add-int/lit8 v8, v1, -0x1

    if-ge v3, v8, :cond_1

    .line 93
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_1

    .line 94
    :cond_1
    move v8, v2

    :goto_1
    if-eqz v5, :cond_4

    packed-switch v5, :pswitch_data_0

    const/16 v9, 0x14

    if-eq v6, v9, :cond_4

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    :cond_2
    move v5, v2

    goto :goto_3

    :pswitch_0
    const/16 v9, 0x9

    if-eq v5, v9, :cond_2

    const/16 v9, 0xa

    if-eq v5, v9, :cond_2

    const/16 v9, 0xb

    if-eq v5, v9, :cond_2

    goto :goto_2

    :pswitch_1
    const/4 v9, 0x5

    if-gt v5, v9, :cond_4

    if-gtz v5, :cond_2

    goto :goto_2

    :pswitch_2
    if-ne v8, v7, :cond_3

    goto :goto_2

    :cond_3
    :pswitch_3
    if-eq v5, v7, :cond_2

    :cond_4
    :goto_2
    :pswitch_4
    move v5, v7

    :goto_3
    if-eqz v5, :cond_6

    add-int v5, v3, v0

    .line 95
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p2, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    invoke-virtual {v9, p1, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_4

    :cond_5
    move v5, v2

    goto :goto_5

    :goto_4
    :pswitch_5
    move v5, v7

    goto :goto_5

    :pswitch_6
    iget-object v9, p2, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0xffff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_6

    .line 96
    return v7

    .line 89
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    move v6, v8

    goto :goto_0

    .line 99
    :cond_7
    return v2

    .line 81
    :cond_8
    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public final doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 6

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/AppInfo;

    invoke-static {v4, v0, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
