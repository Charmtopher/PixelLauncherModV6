.class public Lcom/google/android/apps/nexuslauncher/f;
.super Lcom/google/android/apps/nexuslauncher/e/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/google/android/apps/nexuslauncher/i;


# static fields
.field private static xi:Z


# instance fields
.field private final mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final xf:I

.field private final xg:Lcom/google/android/apps/nexuslauncher/d/b;

.field private final xh:Lcom/google/android/apps/nexuslauncher/a/a;

.field private xj:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/f;->xi:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/e/e;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 66
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 67
    const v0, 0x7f0e002b

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 68
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xf:I

    .line 69
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/d/b;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xg:Lcom/google/android/apps/nexuslauncher/d/b;

    .line 70
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/a/a;->a(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->xh:Lcom/google/android/apps/nexuslauncher/a/a;

    .line 71
    return-void
.end method

.method private a(ZLjava/lang/String;)Ljava/util/List;
    .locals 5

    .line 96
    if-nez p1, :cond_0

    .line 97
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 99
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 102
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 103
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/f;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3}, Lcom/google/android/apps/nexuslauncher/e/b;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    new-instance v3, Lcom/google/android/apps/nexuslauncher/e/a;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/f;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/apps/nexuslauncher/e/a;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_2
    return-object p1
.end method

.method private a(ZLjava/util/List;)V
    .locals 0

    .line 189
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 191
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/f;->xi:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/f;->f(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void

    .line 193
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/f;->f(Ljava/util/List;)V

    .line 194
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    .line 196
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 140
    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    .line 141
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yc:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->onAppsUpdated()V

    .line 142
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 148
    invoke-direct {p0, p4, p1}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/util/List;)V

    .line 150
    nop

    .line 151
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p4, 0x0

    move v0, p4

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/e/a;

    .line 155
    const-string v2, "@instantapp"

    .line 156
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/e/a;->eZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/e/a;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/e/a;->a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/ItemInfoWithIcon;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 166
    if-eqz v1, :cond_3

    .line 167
    iget-boolean v2, v1, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/f;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 171
    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 174
    :cond_3
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/f;->xf:I

    if-lt v0, v1, :cond_0

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->xg:Lcom/google/android/apps/nexuslauncher/d/b;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/d/b;->mWorker:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->xh:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/a/a;->mWorker:Landroid/os/Handler;

    invoke-static {p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public final cF()Ljava/util/List;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->Gy:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_predictions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/f;->CO:Landroid/content/SharedPreferences;

    const-string v3, "reflection_last_predictions"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    .line 91
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final cG()V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/f;->cF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/util/List;)V

    .line 201
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/f;->f(Ljava/util/List;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xj:Ljava/util/List;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    :cond_1
    return-void
.end method

.method public final reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 0

    .line 185
    return-void
.end method

.method public final register()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/e/e;->register()V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xg:Lcom/google/android/apps/nexuslauncher/d/b;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/d/b;->zB:Lcom/google/android/apps/nexuslauncher/i;

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xh:Lcom/google/android/apps/nexuslauncher/a/a;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/a/a;->xo:Lcom/google/android/apps/nexuslauncher/i;

    .line 78
    return-void
.end method

.method public final unregister()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/e/e;->unregister()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xg:Lcom/google/android/apps/nexuslauncher/d/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/d/b;->zB:Lcom/google/android/apps/nexuslauncher/i;

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->xh:Lcom/google/android/apps/nexuslauncher/a/a;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->xo:Lcom/google/android/apps/nexuslauncher/i;

    .line 85
    return-void
.end method
