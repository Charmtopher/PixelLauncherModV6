.class public final Lcom/google/android/gms/common/internal/l;
.super Ljava/lang/Object;


# static fields
.field private static Ja:Ljava/lang/Object;

.field private static KE:Z

.field private static KF:Ljava/lang/String;

.field private static KG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/l;->Ja:Ljava/lang/Object;

    return-void
.end method

.method public static A(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/internal/l;->Ja:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/common/internal/l;->KE:Z

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/common/internal/l;->KE:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/internal/cI;->F(Landroid/content/Context;)Lcom/google/android/gms/internal/cH;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x80

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/cH;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.google.app.id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/internal/l;->KF:Ljava/lang/String;

    const-string v1, "com.google.android.gms.version"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/google/android/gms/common/internal/l;->KG:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "MetadataValueReader"

    const-string v2, "This should never happen."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    sget p0, Lcom/google/android/gms/common/internal/l;->KG:I

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
