.class public Lcom/android/launcher3/popup/PopupPopulator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupPopulator$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static createUpdateRunnable(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 11

    .line 128
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 129
    move-object v9, p1

    iget-object v7, v9, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 130
    new-instance v10, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;

    move-object v0, v10

    move-object/from16 v1, p6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;-><init>(Ljava/util/List;Lcom/android/launcher3/Launcher;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/launcher3/ItemInfo;)V

    return-object v10
.end method

.method static synthetic lambda$createUpdateRunnable$0(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 6

    .line 139
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Z)V

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v4, v2, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_3
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->addNotificationIconForInfo(Lcom/android/launcher3/notification/NotificationInfo;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->updateOverflowEllipsisVisibility()V

    :cond_3
    return-void
.end method

.method static synthetic lambda$createUpdateRunnable$1(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 3

    .line 157
    iput-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mInfo:Lcom/android/launcher3/ShortcutInfo;

    iput-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    iget-object p2, p2, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gtz p2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic lambda$createUpdateRunnable$2(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 162
    nop

    .line 163
    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method static synthetic lambda$createUpdateRunnable$3(Ljava/util/List;Lcom/android/launcher3/Launcher;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/launcher3/ItemInfo;)V
    .locals 12

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 131
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 132
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 133
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 134
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    move v6, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 136
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/StatusBarNotification;

    .line 137
    new-instance v8, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-direct {v8, v0, v7}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 139
    :cond_2
    new-instance v3, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$mfbIeKUr23EqjgnrfxXRLYPVxyA;

    invoke-direct {v3, v2, v5}, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$mfbIeKUr23EqjgnrfxXRLYPVxyA;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_3
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v6

    .line 143
    const/16 v7, 0x9

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    .line 145
    :cond_4
    move-object v5, p0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v5, v5, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    .line 146
    :goto_2
    invoke-static {v3, v5}, Lcom/android/launcher3/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 147
    move v5, v4

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 148
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 149
    new-instance v7, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v7, v6, v0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 151
    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v8

    .line 152
    invoke-virtual {v8, v6, v4}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Z)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 153
    invoke-virtual {v8}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 154
    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 156
    move-object/from16 v8, p7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 157
    new-instance v10, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;

    invoke-direct {v10, v9, v7, v6, v2}, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 162
    :cond_5
    new-instance v2, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$wkh1GdyT5H0NmBH3MqLolBDFslg;

    move-object/from16 v3, p8

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$wkh1GdyT5H0NmBH3MqLolBDFslg;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 81
    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v1, v1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 86
    :cond_1
    sget-object p1, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    .line 93
    return-object p0

    .line 98
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    nop

    .line 100
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 101
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_5

    .line 102
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 104
    if-ge v5, v0, :cond_3

    .line 106
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v4, v4, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_3
    iget-object v6, v4, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v3, v6, :cond_4

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    sub-int/2addr v5, v3

    .line 117
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_5
    return-object p1
.end method
