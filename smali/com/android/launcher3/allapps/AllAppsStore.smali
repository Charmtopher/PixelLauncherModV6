.class public Lcom/android/launcher3/allapps/AllAppsStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mComponentToAppMap:Ljava/util/HashMap;

.field private mDeferUpdates:Z

.field private final mIconContainers:Ljava/util/ArrayList;

.field private mTempKey:Lcom/android/launcher3/util/PackageUserKey;

.field private final mUpdateListeners:Ljava/util/List;

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdates:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    return-void
.end method

.method public static synthetic lambda$updateIconBadges$0(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/Set;Lcom/android/launcher3/BubbleTextView;)V
    .locals 2

    .line 126
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mTempKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    const/4 p1, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic lambda$updatePromiseAppProgress$1(Lcom/android/launcher3/PromiseAppInfo;Lcom/android/launcher3/BubbleTextView;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 138
    iget p0, p0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 140
    :cond_0
    return-void
.end method

.method private updateAllIcons(Lcom/android/launcher3/allapps/AllAppsStore$IconAction;)V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 148
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 150
    instance-of v5, v4, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_0

    .line 151
    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {p1, v4}, Lcom/android/launcher3/allapps/AllAppsStore$IconAction;->apply(Lcom/android/launcher3/BubbleTextView;)V

    .line 148
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    :cond_2
    return-void
.end method


# virtual methods
.method public final addOrUpdateApps(Ljava/util/List;)V
    .locals 3

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 79
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 82
    return-void
.end method

.method public final addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public final getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/AppInfo;

    return-object p1
.end method

.method public final notifyUpdate()V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdates:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 101
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;->onAppsUpdated()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public final registerIconContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public final removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public final setDeferUpdates(Z)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdates:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdates:Z

    .line 67
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mDeferUpdates:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 69
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mUpdatePending:Z

    .line 72
    :cond_0
    return-void
.end method

.method public final unregisterIconContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mIconContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public final updateIconBadges(Ljava/util/Set;)V
    .locals 1

    .line 125
    new-instance v0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Lcom/android/launcher3/allapps/AllAppsStore$IconAction;)V

    .line 133
    return-void
.end method

.method public final updatePromiseAppProgress(Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$XmF5pBEgXE-njZ0HPoPNR9vf60k;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$XmF5pBEgXE-njZ0HPoPNR9vf60k;-><init>(Lcom/android/launcher3/PromiseAppInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Lcom/android/launcher3/allapps/AllAppsStore$IconAction;)V

    .line 141
    return-void
.end method
