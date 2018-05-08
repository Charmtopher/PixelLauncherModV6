.class public Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;
.super Lcom/android/quickstep/TaskOverlayFactory;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field private final yZ:Landroid/graphics/RectF;

.field private final za:Landroid/graphics/RectF;

.field private zb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/android/quickstep/TaskOverlayFactory;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->yZ:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->za:Landroid/graphics/RectF;

    .line 75
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->mUiHandler:Landroid/os/Handler;

    .line 78
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 79
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->b(Landroid/content/SharedPreferences;)V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->za:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->yZ:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->za:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->yZ:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->za:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->yZ:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->zb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 96
    const-string v0, "pref_show_overview_selection"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/google/android/apps/nexuslauncher/experiment/a;->yV:Lcom/google/android/gms/phenotype/h;

    .line 97
    iget-object v0, p1, Lcom/google/android/gms/phenotype/h;->adB:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/phenotype/h;->adB:Ljava/lang/Object;

    :goto_0
    move-object v0, p1

    goto/16 :goto_3

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/phenotype/h;->adu:Z

    if-eqz v0, :cond_2

    const-string v0, "PhenotypeFlag"

    const-string v1, "Ignoring GService & Phenotype values, using default for flag: "

    iget-object v2, p1, Lcom/google/android/gms/phenotype/h;->adx:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/phenotype/h;->adv:Lcom/google/android/gms/internal/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/phenotype/h;->adz:Landroid/net/Uri;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/phenotype/h;->adz:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/phenotype/a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/phenotype/o;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/phenotype/o;-><init>(Lcom/google/android/gms/phenotype/h;Lcom/google/android/gms/phenotype/a;)V

    invoke-static {v1}, Lcom/google/android/gms/phenotype/h;->a(Lcom/google/android/gms/common/a/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/phenotype/h;->I(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/phenotype/h;->ady:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/h;->ady:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/phenotype/h;->adx:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/phenotype/h;->d(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/phenotype/h;->adw:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/phenotype/p;

    invoke-direct {v0, p1}, Lcom/google/android/gms/phenotype/p;-><init>(Lcom/google/android/gms/phenotype/h;)V

    invoke-static {v0}, Lcom/google/android/gms/phenotype/h;->a(Lcom/google/android/gms/common/a/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/gms/phenotype/h;->I(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/google/android/gms/phenotype/h;->adA:Ljava/lang/Object;

    goto/16 :goto_0

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 98
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->zb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    if-nez p1, :cond_8

    .line 99
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->cv()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->zb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    return-void

    .line 97
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call PhenotypeFlag.init() first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->zb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    .line 105
    :cond_8
    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public createOverlay(Landroid/view/View;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 2

    .line 92
    new-instance v0, Lcom/google/android/apps/nexuslauncher/gleaming/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/gleaming/b;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Landroid/view/View;B)V

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 85
    const-string v0, "pref_show_overview_selection"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->b(Landroid/content/SharedPreferences;)V

    .line 88
    :cond_0
    return-void
.end method
