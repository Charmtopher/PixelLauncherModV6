.class public Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;
.super Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final providerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo$1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;ZI)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    .line 42
    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#custom-widget-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->initialLayout:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->icon:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->previewImage:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->resizeMode:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->spanX:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->spanY:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->minSpanX:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->minSpanY:I

    return-void

    .line 55
    :cond_0
    iput p3, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    .line 57
    return-void
.end method


# virtual methods
.method public final getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final initSpans(Landroid/content/Context;)V
    .locals 0

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WidgetProviderInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->previewImage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->spanX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->spanY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->minSpanX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lcom/android/launcher3/widget/custom/CustomAppWidgetProviderInfo;->minSpanY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
