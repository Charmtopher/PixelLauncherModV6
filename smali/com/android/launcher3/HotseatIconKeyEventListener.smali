.class Lcom/android/launcher3/HotseatIconKeyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 47
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e0028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Workspace;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v14

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v12

    invoke-virtual {v6, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, v7, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v9, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/CellLayout;

    if-eqz v9, :cond_6

    iget-object v15, v9, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/16 v10, 0x13

    const/16 v16, 0x0

    if-ne v1, v10, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v10

    if-nez v10, :cond_1

    :goto_0
    invoke-static {v9, v7, v3}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I

    move-result-object v3

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v8, v6

    move-object v9, v3

    move v10, v8

    move-object v6, v15

    goto :goto_1

    :cond_1
    const/16 v10, 0x15

    if-ne v1, v10, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const/16 v9, 0x16

    if-ne v1, v9, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x5d

    move v10, v8

    move-object/from16 v6, v16

    move-object v9, v6

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v3

    move-object v9, v3

    move v10, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v13

    move v8, v1

    move v11, v14

    invoke-static/range {v8 .. v13}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v3

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_5

    :pswitch_1
    sub-int/2addr v14, v4

    goto :goto_2

    :pswitch_2
    sub-int/2addr v14, v4

    invoke-static {v5, v14}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_3

    :pswitch_3
    sub-int/2addr v14, v4

    goto :goto_4

    :pswitch_4
    add-int/2addr v14, v4

    :goto_2
    invoke-static {v5, v14}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :goto_4
    invoke-virtual {v5, v14}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    goto :goto_5

    :pswitch_5
    add-int/2addr v14, v4

    goto :goto_4

    :goto_5
    if-ne v6, v15, :cond_4

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_4

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    :cond_4
    if-eqz v6, :cond_6

    if-nez v16, :cond_5

    if-ltz v3, :cond_5

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_5
    move-object/from16 v3, v16

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-static {v1, v0}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_6
    :goto_6
    return v2

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
