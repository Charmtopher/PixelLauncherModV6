.class public Lcom/android/launcher3/Partner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sPartner:Lcom/android/launcher3/Partner;

.field private static sSearched:Z


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    .line 77
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;
    .locals 3

    const-class v0, Lcom/android/launcher3/Partner;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-boolean v1, Lcom/android/launcher3/Partner;->sSearched:Z

    if-nez v1, :cond_1

    .line 62
    const-string v1, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    invoke-static {v1, p0}, Lcom/android/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p0

    .line 63
    if-eqz p0, :cond_0

    .line 64
    new-instance v1, Lcom/android/launcher3/Partner;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v1, Lcom/android/launcher3/Partner;->sPartner:Lcom/android/launcher3/Partner;

    .line 66
    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/Partner;->sSearched:Z

    .line 68
    :cond_1
    sget-object p0, Lcom/android/launcher3/Partner;->sPartner:Lcom/android/launcher3/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 60
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
