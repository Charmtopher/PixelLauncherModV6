.class public Lcom/android/launcher3/popup/PopupDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# static fields
.field static final SYSTEM_SHORTCUTS:[Lcom/android/launcher3/popup/SystemShortcut;


# instance fields
.field public mAllWidgets:Ljava/util/ArrayList;

.field public mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field private mPackageUserToBadgeInfos:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher3/popup/SystemShortcut;

    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    invoke-direct {v1}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v1}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-direct {v1}, Lcom/android/launcher3/popup/SystemShortcut$Install;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/popup/PopupDataProvider;->SYSTEM_SHORTCUTS:[Lcom/android/launcher3/popup/SystemShortcut;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 70
    return-void
.end method

.method private trimNotifications(Ljava/util/Map;)V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    iget-object p1, p1, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationItemView;->trimNotifications(Ljava/util/List;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationItemView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationItemView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mGutter:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p1, p1, Lcom/android/launcher3/notification/NotificationItemView;->mGutter:Landroid/view/View;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, p1

    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    instance-of v5, v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setDividerVisibility(I)V

    :cond_4
    check-cast v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setDividerVisibility(I)V

    move-object v3, v4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return-void

    .line 153
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancelNotification(Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iput-object p1, v0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotification(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public final getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;
    .locals 1

    .line 174
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/badge/BadgeInfo;

    return-object p1
.end method

.method public final getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetListRowEntry;

    .line 222
    iget-object v3, v1, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 226
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    iget-object v3, v3, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v2

    :cond_2
    return-object v0

    .line 233
    :cond_3
    goto :goto_0

    .line 234
    :cond_4
    return-object v2
.end method

.method public final onNotificationFullRefresh(Ljava/util/List;)V
    .locals 6

    .line 114
    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 119
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/badge/BadgeInfo;

    .line 121
    if-nez v3, :cond_1

    .line 122
    new-instance v3, Lcom/android/launcher3/badge/BadgeInfo;

    invoke-direct {v3, v2}, Lcom/android/launcher3/badge/BadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 123
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    nop

    .line 126
    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v1

    .line 125
    invoke-virtual {v3, v1}, Lcom/android/launcher3/badge/BadgeInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    .line 127
    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/badge/BadgeInfo;

    .line 132
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/badge/BadgeInfo;

    .line 133
    if-nez v2, :cond_3

    .line 134
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :cond_3
    iget-object v4, v2, Lcom/android/launcher3/badge/BadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    iget-object v5, v3, Lcom/android/launcher3/badge/BadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v3

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 143
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->updateIconBadges(Ljava/util/Set;)V

    .line 145
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->trimNotifications(Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public final onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 77
    if-nez v0, :cond_1

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-instance p3, Lcom/android/launcher3/badge/BadgeInfo;

    invoke-direct {p3, p1}, Lcom/android/launcher3/badge/BadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 80
    invoke-virtual {p3, p2}, Lcom/android/launcher3/badge/BadgeInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    .line 81
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 p2, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    .line 88
    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p2

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p2

    .line 90
    :goto_0
    iget-object p3, v0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3

    .line 91
    iget-object p3, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 95
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/Launcher;->updateIconBadges(Ljava/util/Set;)V

    .line 97
    :cond_4
    return-void
.end method

.method public final onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 103
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 104
    iget-object p2, v0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/Launcher;->updateIconBadges(Ljava/util/Set;)V

    .line 108
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->trimNotifications(Ljava/util/Map;)V

    .line 110
    :cond_1
    return-void
.end method
