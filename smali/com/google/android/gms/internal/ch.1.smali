.class final Lcom/google/android/gms/internal/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Tn:Lcom/google/android/gms/internal/adm;

.field private synthetic UG:Lcom/google/android/gms/internal/zzbdn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdn;Lcom/google/android/gms/internal/adm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->UG:Lcom/google/android/gms/internal/zzbdn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->Tn:Lcom/google/android/gms/internal/adm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->UG:Lcom/google/android/gms/internal/zzbdn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ch;->Tn:Lcom/google/android/gms/internal/adm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdn;->zza(Lcom/google/android/gms/internal/zzbdn;Lcom/google/android/gms/internal/adm;)V

    return-void
.end method
