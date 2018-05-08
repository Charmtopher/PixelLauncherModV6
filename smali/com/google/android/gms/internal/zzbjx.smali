.class public final Lcom/google/android/gms/internal/zzbjx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private VB:Ljava/lang/String;

.field private VG:Lcom/google/android/gms/internal/zzbis;

.field public VH:Lcom/google/android/gms/internal/zzbjh;

.field public final VI:Lcom/google/android/gms/awareness/fence/a;

.field private VJ:Landroid/app/PendingIntent;

.field private VK:J

.field private VL:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cR;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cR;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzbis;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjx;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjx;->VG:Lcom/google/android/gms/internal/zzbis;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener"

    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbjh;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/zzbjh;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/zzbjj;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzbjj;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjx;->VH:Lcom/google/android/gms/internal/zzbjh;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjx;->VI:Lcom/google/android/gms/awareness/fence/a;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjx;->VJ:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjx;->VB:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzbjx;->VK:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzbjx;->VL:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbjx;->type:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjx;->VG:Lcom/google/android/gms/internal/zzbis;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjx;->VH:Lcom/google/android/gms/internal/zzbjh;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjx;->VH:Lcom/google/android/gms/internal/zzbjh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbjh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbjx;->VJ:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v3, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjx;->VB:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbjx;->VK:J

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbjx;->VL:J

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
