.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private aaX:Ljava/lang/Boolean;

.field private abd:Ljava/lang/Boolean;

.field private abm:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private abn:Ljava/lang/String;

.field private abo:Lcom/google/android/gms/maps/model/LatLng;

.field private abp:Ljava/lang/Integer;

.field private abq:Ljava/lang/Boolean;

.field private abr:Ljava/lang/Boolean;

.field private abs:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/b;

    invoke-direct {v0}, Lcom/google/android/gms/maps/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abq:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abd:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abr:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abs:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abq:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abd:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abr:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abs:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abm:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abo:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abp:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abn:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/maps/a/a;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abq:Ljava/lang/Boolean;

    invoke-static {p6}, Lcom/google/android/gms/maps/a/a;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abd:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/a/a;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abr:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/a/a;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abs:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/a/a;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaX:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->u(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "PanoramaId"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "Position"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abo:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "Radius"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abp:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "StreetViewPanoramaCamera"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abm:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "UserNavigationEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abq:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "ZoomGesturesEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "PanningGesturesEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "StreetNamesEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "UseViewLifecycleInFragment"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaX:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abm:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abn:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abo:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abp:Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abq:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result p2

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abd:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result p2

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abr:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result p2

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->abs:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result p2

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->aaX:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result p2

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
