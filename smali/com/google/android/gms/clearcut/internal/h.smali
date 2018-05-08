.class final Lcom/google/android/gms/clearcut/internal/h;
.super Ljava/lang/Object;


# instance fields
.field final HX:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    sget-object v0, Lcom/google/android/gms/clearcut/internal/g;->HV:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/cI;->F(Landroid/content/Context;)Lcom/google/android/gms/internal/cH;

    move-result-object v0

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    iget-object v0, v0, Lcom/google/android/gms/internal/cH;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/clearcut/internal/g;->HV:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/google/android/gms/clearcut/internal/g;->HV:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    const-string v0, "gms:playlog:service:sampling_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/l;->b(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    return-void
.end method
