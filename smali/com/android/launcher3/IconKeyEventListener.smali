.class Lcom/android/launcher3/IconKeyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19

    move-object/from16 v0, p1

    move/from16 v7, p2

    .line 37
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v9, 0x1

    if-eq v1, v9, :cond_c

    if-nez v8, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/launcher3/Workspace;

    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0e0051

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/ViewGroup;

    const v4, 0x7f0e0029

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Hotseat;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v11, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v14

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher3/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/launcher3/CellLayout;

    iget-object v6, v15, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/16 v3, 0x14

    if-ne v7, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v15, v1}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_1
    const/16 v3, 0x16

    if-ne v7, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v16

    move v1, v7

    move v3, v4

    move v4, v13

    move v5, v14

    move-object/from16 v17, v6

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    const/4 v2, 0x0

    invoke-virtual {v11, v13}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    const/4 v5, -0x4

    const/4 v4, -0x8

    packed-switch v1, :pswitch_data_0

    if-ltz v1, :cond_9

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    :cond_3
    invoke-virtual {v10, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :pswitch_0
    const/16 v1, 0x13

    if-ne v7, v1, :cond_a

    goto/16 :goto_5

    :pswitch_1
    sub-int/2addr v13, v9

    invoke-virtual {v11, v13}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-static {v1, v6}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_b

    invoke-static {v15, v6}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v13}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    goto/16 :goto_5

    :pswitch_2
    invoke-static {v11, v15, v13, v6}, Lcom/android/launcher3/FocusHelper;->handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :pswitch_3
    invoke-static {v3, v6}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_b

    invoke-static {v15, v6}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :pswitch_4
    invoke-static {v3, v6}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_b

    invoke-static {v15, v6}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :pswitch_5
    invoke-static {v11, v15, v13, v6}, Lcom/android/launcher3/FocusHelper;->handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :pswitch_6
    add-int/lit8 v3, v13, 0x1

    const/4 v9, -0x5

    if-ne v1, v9, :cond_4

    add-int/lit8 v1, v13, -0x1

    move v9, v1

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-static {v11, v9}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    const/4 v3, -0x1

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/android/launcher3/CellLayout;II)[[I

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    move v1, v7

    move v4, v9

    move v9, v5

    move v5, v14

    move v14, v6

    move v6, v12

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v1

    const/4 v12, -0x8

    if-ne v1, v12, :cond_5

    invoke-static {v11, v15, v13, v14}, Lcom/android/launcher3/FocusHelper;->handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :cond_5
    if-ne v1, v9, :cond_3

    invoke-static {v11, v15, v13, v14}, Lcom/android/launcher3/FocusHelper;->handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_5

    :pswitch_7
    move v12, v4

    move v9, v5

    move v10, v6

    add-int/lit8 v3, v13, -0x1

    const/16 v4, -0xa

    if-ne v1, v4, :cond_6

    add-int/lit8 v1, v13, 0x1

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-static {v11, v4}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v3, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/android/launcher3/CellLayout;II)[[I

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v16

    move v1, v7

    move v5, v14

    move-object v14, v6

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v1

    if-ne v1, v12, :cond_7

    invoke-static {v11, v15, v13, v10}, Lcom/android/launcher3/FocusHelper;->handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v12

    goto :goto_5

    :cond_7
    if-ne v1, v9, :cond_8

    invoke-static {v11, v15, v13, v10}, Lcom/android/launcher3/FocusHelper;->handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v12

    goto :goto_5

    :cond_8
    invoke-virtual {v14, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-gt v3, v1, :cond_a

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    move-object/from16 v4, v17

    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_a

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v4, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_5

    :cond_a
    move-object v12, v2

    :cond_b
    :goto_5
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    invoke-static {v7, v0}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_c
    :goto_6
    return v8

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method
