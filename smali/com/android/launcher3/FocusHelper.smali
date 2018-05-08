.class public Lcom/android/launcher3/FocusHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    .line 476
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object p0
.end method

.method static getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;
    .locals 7

    .line 537
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 538
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_4

    .line 539
    if-eqz p1, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    .line 540
    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-eqz p1, :cond_1

    add-int/lit8 v4, v0, -0x1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-ltz v4, :cond_3

    if-ge v4, v0, :cond_3

    .line 541
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 542
    return-object v5

    .line 540
    :cond_2
    add-int/2addr v4, v3

    goto :goto_2

    .line 538
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;
    .locals 7

    .line 552
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 553
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    .line 554
    if-eqz p1, :cond_0

    .line 555
    move v3, v2

    goto :goto_1

    .line 554
    :cond_0
    nop

    .line 555
    const/4 v3, -0x1

    :goto_1
    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, -0x1

    :goto_2
    if-ltz v4, :cond_3

    if-ge v4, v0, :cond_3

    .line 556
    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    return-object v5

    .line 555
    :cond_2
    add-int/2addr v4, v3

    goto :goto_2

    .line 553
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 561
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;
    .locals 1

    .line 522
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 523
    const/4 p0, 0x0

    return-object p0

    .line 525
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 526
    invoke-static {v0, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 527
    if-nez v0, :cond_1

    .line 529
    invoke-static {p1, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 530
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 532
    :cond_1
    return-object v0
.end method

.method static handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;
    .locals 1

    .line 507
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    .line 508
    const/4 p0, 0x0

    return-object p0

    .line 510
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 511
    invoke-static {v0, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 512
    if-nez v0, :cond_1

    .line 514
    invoke-static {p1, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 515
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 517
    :cond_1
    return-object v0
.end method

.method static playSoundEffect(ILandroid/view/View;)V
    .locals 0

    .line 483
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 488
    :sswitch_0
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    .line 489
    return-void

    .line 485
    :sswitch_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    .line 486
    return-void

    .line 493
    :sswitch_2
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    .line 494
    return-void

    .line 498
    :sswitch_3
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    .line 499
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_3
        0x7b -> :sswitch_2
    .end sparse-switch
.end method
